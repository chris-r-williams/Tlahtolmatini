import { ParseState } from './ParseState.js';
import { PrefixValidator } from './PrefixValidator.js';

/**
 * Handles the recursive backtracking parsing logic
 */
export class BacktrackingParser {
  constructor(lexicon) {
    this.prefixValidator = new PrefixValidator();
    this.lexicon = lexicon;
  }

  /**
     * Recursively parses suffixes with backtracking capability
     * @param {string} currentSegment - The current word segment being analyzed
     * @param {Array} currentSuffixes - Array of currently identified suffixes
     * @param {boolean} isImperativeContext - Whether the word is in imperative context
     * @param {Set} [excludedMorphemes=new Set()] - Set of morphemes to exclude from parsing
     * @param {boolean} [isFirstPass=true] - Whether this is the first parsing pass
     * @returns {Object} Parsing result with valid parses and identified morphemes
     */
  parseSuffixesRecursively(currentSegment, currentSuffixes, isImperativeContext,
    excludedMorphemes = new Set(), isFirstPass = true) {
    const identifiedMorphemes = [];

    if (currentSegment.length === 0) {
      const results = this.#parseLeftRemainderWithState('', currentSuffixes, null);
      const validResults = results.filter((result) =>
        result.unparsedRemainder.length === 0 &&
                (result.precedingStems.length > 0 || result.prefixes.length > 0),
      );
      return {
        validParses: validResults.map((result) => ({
          stems: result.precedingStems,
          prefixes: result.prefixes,
          suffixes: currentSuffixes.slice().reverse(),
        })),
        identifiedMorphemes,
      };
    }

    const allValidParses = [];
    const allIdentifiedMorphemes = [];

    // Try each suffix that matches the end of the current segment
    for (const suffix of this.lexicon.filter((m) => m.type === 'suffix')) {
      if (currentSegment.endsWith(suffix.morpheme)) {
        const morphemeKey = `${suffix.morpheme}-${suffix.type}-${currentSegment.length - suffix.morpheme.length}`;

        if (excludedMorphemes.has(morphemeKey)) {
          continue;
        }

        if (isFirstPass) {
          identifiedMorphemes.push({
            morpheme: suffix.morpheme,
            type: suffix.type,
            key: morphemeKey,
            position: currentSegment.length - suffix.morpheme.length,
          });
        }

        const actualSuffixToUse = this.#resolveSuffix(suffix, isImperativeContext);
        const remainder = currentSegment.slice(0, -actualSuffixToUse.morpheme.length);
        const newSuffixes = [...currentSuffixes, actualSuffixToUse];

        // Try all parsing methods
        allValidParses.push(
          ...(this.#tryParseVerbStem(remainder, newSuffixes) || []),
          ...(this.#tryParseNounStem(remainder, newSuffixes) || []),
          ...(this.#tryParsePrefixesAndStems(remainder, newSuffixes) || []),
        );

        // Continue recursively
        const recursiveResult = this.parseSuffixesRecursively(
          remainder,
          newSuffixes,
          isImperativeContext,
          excludedMorphemes,
          isFirstPass,
        );

        if (recursiveResult.validParses) {
          allValidParses.push(...recursiveResult.validParses);
        }

        if (isFirstPass) {
          allIdentifiedMorphemes.push(...recursiveResult.identifiedMorphemes);
        }
      }
    }

    // Try parsing the whole segment directly
    const directResults = this.#parseLeftRemainderWithState(currentSegment, currentSuffixes, null);
    allValidParses.push(...this.#filterAndFormatResults(directResults, currentSuffixes));

    return {
      validParses: allValidParses.length > 0 ? allValidParses : null,
      identifiedMorphemes: isFirstPass ? [...identifiedMorphemes, ...allIdentifiedMorphemes] : [],
    };
  }

  /**
     * Resolves the correct suffix to use based on context
     */
  #resolveSuffix(suffix, isImperativeContext) {
    if (suffix.morpheme === 'can') {
      if (isImperativeContext) {
        return this.lexicon.find((m) =>
          m.morpheme === 'can' && m.category === 'plural',
        ) || suffix;
      } else {
        return this.lexicon.find((m) =>
          m.morpheme === 'can' && m.category === 'locative',
        ) || suffix;
      }
    }
    return suffix;
  }

  /**
     * Attempts to parse a verb stem from the current segment
     */
  #tryParseVerbStem(segment, currentSuffixes) {
    const stem = this.lexicon.find((s) =>
      s.type === 'verb_stem' && segment.endsWith(s.morpheme),
    );
    if (stem) {
      const remainder = segment.slice(0, -stem.morpheme.length);
      const results = this.#parseLeftRemainderWithState(remainder, currentSuffixes, stem);
      return this.#filterAndFormatResults(results, currentSuffixes);
    }
    return null;
  }

  /**
     * Attempts to parse a noun stem from the current segment
     */
  #tryParseNounStem(segment, currentSuffixes) {
    const stem = this.lexicon.find((s) =>
      s.type === 'noun_stem' && segment.endsWith(s.morpheme),
    );
    if (stem) {
      const remainder = segment.slice(0, -stem.morpheme.length);
      const results = this.#parseLeftRemainderWithState(remainder, currentSuffixes, stem);
      return this.#filterAndFormatResults(results, currentSuffixes);
    }
    return null;
  }

  /**
     * Attempts to parse prefixes and stems from the current segment
     */
  #tryParsePrefixesAndStems(segment, currentSuffixes) {
    const results = this.#parseLeftRemainderWithState(segment, currentSuffixes, null);
    return this.#filterAndFormatResults(results, currentSuffixes);
  }

  /**
     * Filters and formats parse results
     */
  #filterAndFormatResults(results, currentSuffixes) {
    return results
      .filter((result) => result.unparsedRemainder.length === 0 &&
                             (result.precedingStems.length > 0 || result.prefixes.length > 0))
      .map((result) => ({
        stems: result.precedingStems,
        prefixes: result.prefixes,
        suffixes: currentSuffixes.slice().reverse(),
      }));
  }

  /**
     * Parses the remaining segment using state-based parsing
     */
  #parseLeftRemainderWithState(remainder, suffixes, initialMorphemeDetails = null) {
    let currentStates = [
      new ParseState([], initialMorphemeDetails ? [initialMorphemeDetails] : [], remainder),
    ];

    let morphemeFoundInIteration = true;
    while (morphemeFoundInIteration) {
      morphemeFoundInIteration = false;
      const newStates = [];

      for (const state of currentStates) {
        if (!state.hasRemainder()) {
          newStates.push(state);
          continue;
        }

        const stemMatches = this.#findStemMatches(state);
        if (stemMatches.length > 0) {
          newStates.push(...stemMatches);
          morphemeFoundInIteration = true;
          continue;
        }

        const prefixMatches = this.#findPrefixMatches(state, suffixes);
        if (prefixMatches.length > 0) {
          newStates.push(...prefixMatches);
          morphemeFoundInIteration = true;
          continue;
        }

        newStates.push(state);
      }

      currentStates = newStates;
    }

    return currentStates
      .filter((state) => state.hasStem() || state.hasPrefix())
      .map((state) => state.toParseResult());
  }

  /**
     * Finds all possible stem matches for the current state
     */
  #findStemMatches(state) {
    const matches = [];
    for (const stem of this.lexicon.filter((m) =>
      m.type === 'verb_stem' || m.type === 'noun_stem',
    )) {
      if (state.remainder.endsWith(stem.morpheme)) {
        const newState = state.clone();
        newState.addStem(stem);
        newState.setRemainder(
          state.remainder.slice(0, -stem.morpheme.length),
        );
        matches.push(newState);
      }
    }
    return matches;
  }

  /**
     * Finds all possible prefix matches for the current state
     */
  #findPrefixMatches(state, suffixes) {
    const matches = [];
    const allPrefixes = [
      ...this.lexicon.filter((m) => m.type === 'prefix'),
      ...this.lexicon.filter((m) => m.category === 'imperative'),
    ];

    // Sort prefixes by length (longest first) for this specific matching
    const sortedPrefixes = allPrefixes.sort((a, b) => b.morpheme.length - a.morpheme.length);

    for (const prefix of sortedPrefixes) {
      if (state.remainder.startsWith(prefix.morpheme)) {
        let isValid = true;
        if (this.prefixValidator.isAmbiguousPrefix(prefix.morpheme)) {
          isValid = this.prefixValidator.isValidAmbiguousPrefix(prefix, state, suffixes);
        } else {
          isValid = this.prefixValidator.isValidPrefixOrder(prefix, state);
        }

        if (isValid) {
          const newState = state.clone();
          newState.addPrefix(prefix);
          newState.setRemainder(
            state.remainder.slice(prefix.morpheme.length),
          );
          matches.push(newState);
        }
      }
    }
    return matches;
  }
}