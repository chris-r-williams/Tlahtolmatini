import { sortByMorphemeLengthDesc, modernToClassical, classicalToModern } from '../helper.js';
import { nahuatlLexicon } from '../lexicon.js';
import { knownAmbiguousWords } from '../ambiguous.js';
import { NahuatlTranslator } from '../translator/NahuatlTranslator.js';
import { MorphemeValidator } from './MorphemeValidator.js';
import { BacktrackingParser } from './BacktrackingParser.js';

/**
 * Main parser class that handles morphological analysis of Nahuatl words
 */
export class NahuatlParser {
  #lexicon;
  #ambiguousWords;
  #backtrackingParser;
  #morphemeValidator;

  /**
     * Creates a new instance of NahuatlParser and initializes components
     */
  constructor() {
    this.#lexicon = sortByMorphemeLengthDesc(nahuatlLexicon);
    this.#ambiguousWords = knownAmbiguousWords;
    this.#backtrackingParser = new BacktrackingParser(this.#lexicon);
    this.#morphemeValidator = new MorphemeValidator();
  }

  /**
     * Analyzes a Nahuatl word and returns its morphological breakdown
     * @param {string} word - The Nahuatl word to analyze
     * @param {string} [orthography="classical"] - The orthography system ("classical" or "modern")
     * @returns {Object} Analysis result containing success status and morpheme parsings
     */
  analyze(word, orthography = 'classical') {
    let processedWord = word.toLowerCase();

    // Convert to classical orthography if input is modern
    if (orthography === 'modern') {
      processedWord = modernToClassical(processedWord);
    }

    // Check for known ambiguous words
    const ambiguousMatch = this.#handleAmbiguousWord(processedWord, orthography);
    if (ambiguousMatch) {
      return ambiguousMatch;
    }

    // Check for invariable morphemes
    const invariableMatch = this.#handleInvariableWord(processedWord, orthography);
    if (invariableMatch) {
      return invariableMatch;
    }

    // Determine if the word starts with an imperative prefix
    const isImperativeContext = this.#isImperativeContext(processedWord);

    // Parse with backtracking
    const parseResult = this.#parseWithBacktracking(processedWord, isImperativeContext);
    if (!parseResult.success) {
      return parseResult;
    }

    // Convert and validate the parsings
    return this.#processAndValidateParsings(parseResult.parsings, orthography);
  }

  /**
     * Handles known ambiguous words
     */
  #handleAmbiguousWord(word, orthography) {
    const ambiguousMatch = this.#ambiguousWords.find((entry) => entry.word === word);
    if (ambiguousMatch) {
      const parsings = ambiguousMatch.parse.map((morphemeSequence) => ({
        morphemes: morphemeSequence.map((m) => ({
          morpheme: orthography === 'modern' ?
            classicalToModern(m.morpheme) : m.morpheme,
          details: m.details,
        })),
        englishTranslation: new NahuatlTranslator(this.#lexicon)
          .generateEnglishTranslation(morphemeSequence),
      }));
      return { success: true, parsings };
    }
    return null;
  }

  /**
     * Handles invariable words
     */
  #handleInvariableWord(word, orthography) {
    const invariables = this.#lexicon.filter((m) =>
      m.type === 'particle' ||
            m.type === 'interrogative' ||
            m.type === 'adverb' ||
            m.type === 'adjective' ||
            m.type === 'interjection' ||
            m.type === 'numeral',
    );
    const match = invariables.find((m) => m.morpheme === word);
    if (match) {
      const morphemes = [{
        morpheme: orthography === 'modern' ?
          classicalToModern(match.morpheme) : match.morpheme,
        details: match,
      }];
      return {
        success: true,
        parsings: [{
          morphemes,
          englishTranslation: new NahuatlTranslator(this.#lexicon)
            .generateEnglishTranslation(morphemes),
        }],
      };
    }
    return null;
  }

  /**
     * Checks if the word is in an imperative context
     */
  #isImperativeContext(word) {
    return this.#lexicon
      .filter((m) => m.category === 'imperative')
      .some((m) => word.startsWith(m.morpheme));
  }

  /**
     * Performs the backtracking parse
     */
  #parseWithBacktracking(word, isImperativeContext) {
    const excludedMorphemes = new Set();
    let firstPassMorphemes = [];
    let allParses = null;
    const maxAttempts = 20; // Prevent infinite loops
    let attempts = 0;

    do {
      attempts++;
      const result = this.#backtrackingParser.parseSuffixesRecursively(
        word,
        [],
        isImperativeContext,
        excludedMorphemes,
        firstPassMorphemes.length === 0,
      );

      allParses = result.validParses;

      // Store morphemes from first pass
      if (firstPassMorphemes.length === 0) {
        firstPassMorphemes = [...result.identifiedMorphemes];
      }

      // If we have valid parses, check if they pass validation
      if (allParses && allParses.length > 0) {
        const testParsings = allParses.map((parse) => ({
          morphemes: [
            ...parse.prefixes.map((p) => ({ morpheme: p.morpheme, details: p })),
            ...parse.stems.map((s) => ({ morpheme: s.morpheme, details: s })),
            ...parse.suffixes.map((s) => ({ morpheme: s.morpheme, details: s })),
          ],
        }));

        const validParsings = this.#morphemeValidator.filterInvalidCombinations(testParsings);

        if (validParsings.length > 0) {
          // We found valid parsings, return them
          break;
        }

        // No valid parsings after validation, continue backtracking
        allParses = null;
      }

      if (!allParses || allParses.length === 0) {
        const nextMorphemeToExclude = this.#findNextMorphemeToExclude(
          firstPassMorphemes,
          excludedMorphemes,
        );

        if (nextMorphemeToExclude) {
          excludedMorphemes.add(nextMorphemeToExclude.key);
        } else {
          // No more morphemes to exclude
          break;
        }
      }
    } while ((!allParses || allParses.length === 0) &&
                 excludedMorphemes.size < firstPassMorphemes.length &&
                 attempts < maxAttempts);

    if (!allParses || allParses.length === 0) {
      return {
        success: false,
        error: `Failed to find a complete and valid morpheme parse for '${word}' after ${attempts} attempts.`,
        parsings: [],
        debug: {
          firstPassMorphemes: firstPassMorphemes.map((m) => `${m.morpheme}(${m.type})`),
          excludedMorphemes: Array.from(excludedMorphemes),
          attempts,
        },
      };
    }

    return { success: true, parsings: allParses };
  }

  /**
     * Improved logic for finding the next morpheme to exclude in backtracking
     * Now properly cycles through morphemes in order of likelihood to cause conflicts
     */
  #findNextMorphemeToExclude(morphemes, excluded) {
    // Sort morphemes by position (rightmost first, as they're parsed first)
    const sortedMorphemes = [...morphemes].sort((a, b) => b.position - a.position);

    // First, try excluding suffixes from right to left
    for (const morpheme of sortedMorphemes) {
      if (morpheme.type === 'suffix' && !excluded.has(morpheme.key)) {
        return morpheme;
      }
    }

    // Then try excluding stems from right to left
    for (const morpheme of sortedMorphemes) {
      if ((morpheme.type === 'verb_stem' || morpheme.type === 'noun_stem') && !excluded.has(morpheme.key)) {
        return morpheme;
      }
    }

    // Finally try excluding prefixes from left to right
    const sortedByPosition = [...morphemes].sort((a, b) => a.position - b.position);
    for (const morpheme of sortedByPosition) {
      if (morpheme.type === 'prefix' && !excluded.has(morpheme.key)) {
        return morpheme;
      }
    }

    return null;
  }

  /**
     * Processes and validates the final parsings
     */
  #processAndValidateParsings(allParses, orthography) {
    const parsings = allParses.map((parse) => {
      const morphemes = [
        ...parse.prefixes.map((p) => ({
          morpheme: orthography === 'modern' ?
            classicalToModern(p.morpheme) : p.morpheme,
          details: p,
        })),
        ...parse.stems.map((s) => ({
          morpheme: orthography === 'modern' ?
            classicalToModern(s.morpheme) : s.morpheme,
          details: s,
        })),
        ...parse.suffixes.map((s) => ({
          morpheme: orthography === 'modern' ?
            classicalToModern(s.morpheme) : s.morpheme,
          details: s,
        })),
      ];

      return {
        morphemes,
        englishTranslation: new NahuatlTranslator(this.#lexicon)
          .generateEnglishTranslation(morphemes),
      };
    });

    const validParsings = this.#morphemeValidator.filterInvalidCombinations(parsings);
    const uniqueParsings = this.#deduplicateParsings(validParsings);

    return { success: true, parsings: uniqueParsings };
  }

  /**
     * Removes duplicate morpheme parsings based on their morpheme details
     */
  #deduplicateParsings(parsings) {
    const seen = new Set();
    return parsings.filter((parsing) => {
      const key = JSON.stringify(parsing.morphemes.map((m) => ({
        morpheme: m.morpheme,
        type: m.details.type,
        category: m.details.category,
        role: m.details.role,
        person: m.details.person,
        number: m.details.number,
      })));

      if (seen.has(key)) {
        return false;
      }
      seen.add(key);
      return true;
    });
  }
}