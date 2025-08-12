import { sortByMorphemeLengthDesc, modernToClassical, classicalToModern } from '../helper.js';
import { nahuatlLexicon } from '../lexicon.js';
import { knownAmbiguousWords } from '../ambiguous.js';
import { NahuatlTranslator } from '../translator.js';
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
    analyze(word, orthography = "classical") {
        let processedWord = word.toLowerCase();
    
        // Convert to classical orthography if input is modern
        if (orthography === "modern") {
            processedWord = modernToClassical(processedWord);
        }
    
        // Check for known ambiguous words
        const ambiguousMatch = this.#handleAmbiguousWord(processedWord, orthography);
        if (ambiguousMatch) return ambiguousMatch;
    
        // Check for invariable morphemes
        const invariableMatch = this.#handleInvariableWord(processedWord, orthography);
        if (invariableMatch) return invariableMatch;
    
        // Determine if the word starts with an imperative prefix
        const isImperativeContext = this.#isImperativeContext(processedWord);
    
        // Parse with backtracking
        const parseResult = this.#parseWithBacktracking(processedWord, isImperativeContext);
        if (!parseResult.success) return parseResult;

        // Convert and validate the parsings
        return this.#processAndValidateParsings(parseResult.parsings, orthography);
    }

    /**
     * Handles known ambiguous words
     */
    #handleAmbiguousWord(word, orthography) {
        const ambiguousMatch = this.#ambiguousWords.find(entry => entry.word === word);
        if (ambiguousMatch) {
            const parsings = ambiguousMatch.parse.map(morphemeSequence => ({
                morphemes: morphemeSequence.map(m => ({
                    morpheme: orthography === "modern" ? 
                        classicalToModern(m.morpheme) : m.morpheme,
                    details: m.details
                })),
                englishTranslation: new NahuatlTranslator(this.#lexicon)
                    .generateEnglishTranslation(morphemeSequence)
            }));
            return { success: true, parsings };
        }
        return null;
    }

    /**
     * Handles invariable words
     */
    #handleInvariableWord(word, orthography) {
        const invariables = this.#lexicon.filter(m => 
            m.type === "particle" || 
            m.type === "interrogative" || 
            m.type === "adverb"
        );
        const match = invariables.find(m => m.morpheme === word);
        if (match) {
            const morphemes = [{
                morpheme: orthography === "modern" ? 
                    classicalToModern(match.morpheme) : match.morpheme,
                details: match
            }];
            return {
                success: true,
                parsings: [{
                    morphemes,
                    englishTranslation: new NahuatlTranslator(this.#lexicon)
                        .generateEnglishTranslation(morphemes)
                }]
            };
        }
        return null;
    }

    /**
     * Checks if the word is in an imperative context
     */
    #isImperativeContext(word) {
        return this.#lexicon
            .filter(m => m.category === "imperative")
            .some(m => word.startsWith(m.morpheme));
    }

    /**
     * Performs the backtracking parse
     */
    #parseWithBacktracking(word, isImperativeContext) {
        let excludedMorphemes = new Set();
        let firstPassMorphemes = [];
        let allParses = null;
        
        do {
            const result = this.#backtrackingParser.parseSuffixesRecursively(
                word, 
                [], 
                isImperativeContext,
                excludedMorphemes,
                firstPassMorphemes.length === 0
            );
            
            allParses = result.validParses;
            if (firstPassMorphemes.length === 0) {
                firstPassMorphemes = result.identifiedMorphemes;
            }
            
            if (!allParses || allParses.length === 0) {
                const rightmostMorpheme = this.#findNextMorphemeToExclude(
                    firstPassMorphemes, 
                    excludedMorphemes
                );
                
                if (rightmostMorpheme) {
                    excludedMorphemes.add(rightmostMorpheme.key);
                } else {
                    break;
                }
            }
        } while ((!allParses || allParses.length === 0) && 
                 excludedMorphemes.size < firstPassMorphemes.length);

        if (!allParses || allParses.length === 0) {
            return { 
                success: false, 
                error: `Failed to find a complete and valid morpheme parse for '${word}'.`,
                parsings: []
            };
        }

        return { success: true, parsings: allParses };
    }

    /**
     * Finds the next morpheme to exclude in backtracking
     */
    #findNextMorphemeToExclude(morphemes, excluded) {
        for (let i = morphemes.length - 1; i >= 0; i--) {
            if (!excluded.has(morphemes[i].key)) {
                return morphemes[i];
            }
        }
        return null;
    }

    /**
     * Processes and validates the final parsings
     */
    #processAndValidateParsings(allParses, orthography) {
        const parsings = allParses.map(parse => {
            const morphemes = [
                ...parse.prefixes.map(p => ({
                    morpheme: orthography === "modern" ? 
                        classicalToModern(p.morpheme) : p.morpheme,
                    details: p
                })),
                ...parse.stems.map(s => ({
                    morpheme: orthography === "modern" ? 
                        classicalToModern(s.morpheme) : s.morpheme,
                    details: s
                })),
                ...parse.suffixes.map(s => ({
                    morpheme: orthography === "modern" ? 
                        classicalToModern(s.morpheme) : s.morpheme,
                    details: s
                }))
            ];

            return {
                morphemes,
                englishTranslation: new NahuatlTranslator(this.#lexicon)
                    .generateEnglishTranslation(morphemes)
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
        return parsings.filter(parsing => {
            const key = JSON.stringify(parsing.morphemes.map(m => ({
                morpheme: m.morpheme,
                type: m.details.type,
                category: m.details.category,
                role: m.details.role,
                person: m.details.person,
                number: m.details.number
            })));
            
            if (seen.has(key)) return false;
            seen.add(key);
            return true;
        });
    }
}
