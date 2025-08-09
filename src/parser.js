import { sortByMorphemeLengthDesc, nominalizingSuffixMorphemes, pluralSuffixMorphemes, modernToClassical, classicalToModern } from './helper.js';
import { nahuatlLexicon } from './lexicon.js';
import { knownAmbiguousWords } from './ambiguous.js';
import { NahuatlTranslator } from './translator.js';

export class NahuatlParser {

    #lexicon;
    #ambiguousWords;
    #allPrefixes;
    #allSuffixes;
    #allStems;
    #allNounStems;
    #allParticlesAndInterrogativesAndAdverbs;
    #sortedAllStems;
    #sortedAllNounStems;
    #sortedAllPrefixes;
    #sortedAllSuffixes;
    #sortedAllInvariables;
    
    /**
     * Creates a new instance of NahuatlParser and initializes the lexicon and morpheme lists
     */
    constructor() {
        this.#lexicon = sortByMorphemeLengthDesc(nahuatlLexicon);
        this.#ambiguousWords = knownAmbiguousWords;
        // Add imperative prefixes to allPrefixes
        this.#allPrefixes = this.#lexicon.filter(m => m.type === "prefix" || m.category === "imperative");
        this.#allSuffixes = this.#lexicon.filter(m => m.type === "suffix");
        this.#allStems = this.#lexicon.filter(m => m.type === "verb_stem" || m.type === "noun_stem");
        this.#allNounStems = this.#lexicon.filter(m => m.type === "noun_stem");
        this.#allParticlesAndInterrogativesAndAdverbs = this.#lexicon.filter(m => m.type === "particle" || m.type === "interrogative" || m.type === "adverb");

        // Pre-sort for greedy matching
        this.#sortedAllStems = sortByMorphemeLengthDesc(this.#allStems);
        this.#sortedAllNounStems = sortByMorphemeLengthDesc(this.#allNounStems);
        this.#sortedAllPrefixes = sortByMorphemeLengthDesc(this.#allPrefixes);
        this.#sortedAllSuffixes = sortByMorphemeLengthDesc(this.#allSuffixes);
        this.#sortedAllInvariables = sortByMorphemeLengthDesc(this.#allParticlesAndInterrogativesAndAdverbs);
    }

    /**
     * Removes duplicate morpheme parsings based on their morpheme details
     * @param {Array} parsings - Array of morpheme parsing results
     * @returns {Array} Deduplicated array of parsings
     */
    #deduplicateParsings(parsings) {
        const seen = new Set();
        return parsings.filter(parsing => {
            // Create a unique key for each parsing based on morphemes and their details
            const key = JSON.stringify(parsing.morphemes.map(m => ({
                morpheme: m.morpheme,
                type: m.details.type,
                category: m.details.category,
                role: m.details.role,
                person: m.details.person,
                number: m.details.number
            })));
            
            if (seen.has(key)) {
                return false;
            }
            seen.add(key);
            return true;
        });
    }

    /**
     * Filters out invalid morpheme combinations based on grammatical rules
     * @param {Array} parsings - Array of potential morpheme parsings
     * @returns {Array} Array of valid parsings that follow Nahuatl grammar rules
     */
    #filterInvalidCombinations(parsings) {
        return parsings.filter(p => {
            const prefixes = p.morphemes.filter(m => m.details.type === 'prefix');
            const stems = p.morphemes.filter(m => m.details.type === 'verb_stem' || m.details.type === 'noun_stem');
            const suffixes = p.morphemes.filter(m => m.details.type === 'suffix');
            
            // Find the rightmost (primary) noun stem
            const primaryNounStem = [...stems].reverse().find(s => s.details.type === 'noun_stem');
            
            // Find plural suffixes (explicit ones like -h, -huan, etc.)
            const pluralSuffixes = suffixes.filter(s => s.details.category === 'plural');
            
            // If we have a primary noun stem
            if (primaryNounStem && !primaryNounStem.details.animate) {
                // Check if the noun is possessed
                const hasPossessivePrefix = prefixes.some(p => p.details.role === 'possessive');
                
                // Rule 1: An inanimate noun cannot take a plural suffix
                if (pluralSuffixes.length > 0) {
                    return false;
                }
                
                // Rule 2: An inanimate noun with no suffixes (implied -h) is invalid
                // UNLESS it:
                // a) has absolutive_suffix set to false, OR
                // b) is possessed (has a possessive prefix)
                if (suffixes.length === 0 && 
                    primaryNounStem.details.absolutive_suffix !== false && 
                    !hasPossessivePrefix) {
                    return false;
                }
            }
            
            // Multiple plural suffixes are not allowed on any noun
            if (pluralSuffixes.length > 1) {
                return false;
            }
    
            const hasReflexive = prefixes.some(p => p.details.role === 'reflexive');
            const hasObject = prefixes.some(p => p.details.role === 'object');
            const hasPossessive = prefixes.some(p => p.details.role === 'possessive');
            const hasSubject = prefixes.some(p => p.details.role === 'subject');
            const hasVerbStem = stems.some(s => s.details.type === 'verb_stem');
            const hasNounStem = stems.some(s => s.details.type === 'noun_stem');
            const hasNominalizingSuffix = this.#hasNominalizingSuffix(suffixes.map(s => s.details));
            
            // Rule 1: A verb is invalid if it has both a reflexive prefix and a direct object prefix
            if (hasReflexive && hasObject) {
                return false;
            }

            // Rule 2: Cannot have both subject and possessive prefixes (mutually exclusive)
            if (hasSubject && hasPossessive) {
                return false;
            }

            // Rule 3: Prefix order validation - subjects must come before objects
            const subjectPrefixes = prefixes.filter(p => p.details.role === 'subject');
            const objectPrefixes = prefixes.filter(p => p.details.role === 'object');
            
            if (subjectPrefixes.length > 0 && objectPrefixes.length > 0) {
                // Find positions of subject and object prefixes in the morpheme sequence
                const subjectIndex = p.morphemes.findIndex(m => m.details.role === 'subject');
                const objectIndex = p.morphemes.findIndex(m => m.details.role === 'object');
                
                // Subject must come before object
                if (subjectIndex > objectIndex) {
                    return false;
                }
            }

            // Rule 4: Context-dependent prefix usage validation
            for (const prefix of prefixes) {
                if (prefix.details.used_with) {
                    if (prefix.details.used_with === 'noun' && !hasNounStem && !hasNominalizingSuffix) {
                        // Possessive prefixes require noun stems or nominalizing suffixes
                        return false;
                    }
                    if (prefix.details.used_with === 'verb' && (!hasVerbStem || hasNominalizingSuffix)) {
                        // Reflexive prefixes require verb stems and cannot be used with nominalized verbs
                        return false;
                    }
                }
            }

            // Rule 5: Reflexive-subject agreement validation
            const reflexivePrefixes = prefixes.filter(p => p.details.role === 'reflexive');
            
            for (const reflexive of reflexivePrefixes) {
                if (subjectPrefixes.length > 0) {
                    // If there's an explicit subject, reflexive must agree in person and number
                    const matchingSubject = subjectPrefixes.find(subject => 
                        subject.details.person === reflexive.details.person && 
                        subject.details.number === reflexive.details.number
                    );
                    if (!matchingSubject) {
                        return false;
                    }
                } else {
                    // If no explicit subject, reflexive implies 3rd person singular
                    if (reflexive.details.person !== "third" || reflexive.details.number !== "singular") {
                        return false;
                    }
                }
            }

            // Rule 6: Possessive suffix context validation
            const hasPossessiveSuffix = suffixes.some(s => s.details.category === 'possessive');
            if (hasPossessiveSuffix && !hasPossessive) {
                // Possessive suffixes require possessive prefixes
                return false;
            }

            // Rule 7: Invalid possessive interpretation without actual possessive prefix
            if (!hasPossessive && p.englishTranslation && 
                (p.englishTranslation.includes("his/her/its") || 
                 p.englishTranslation.includes("their") ||
                 p.englishTranslation.includes("my") ||
                 p.englishTranslation.includes("your") ||
                 p.englishTranslation.includes("our")) &&
                !p.englishTranslation.includes("leave") && // Don't filter valid object pronouns in verbs
                !p.englishTranslation.includes("see") &&
                !hasObject) { // Allow object pronouns like "him/her/it"
                return false;
            }

            // Rule 8: Verb stem treated as noun without nominalizing suffix
            if (hasVerbStem && !hasNounStem && !hasNominalizingSuffix) {
                // Check if the translation suggests it's being treated as a noun
                if (p.englishTranslation && 
                    (p.englishTranslation.startsWith("(it is)") || 
                     p.englishTranslation.startsWith("(they are)"))) {
                    return false;
                }
            }
    
            return true;
        });
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
    	const ambiguousMatch = this.#ambiguousWords.find(entry => entry.word === processedWord);
    	if (ambiguousMatch) {
        	// Handle multiple possible parsings for the ambiguous word
        	const parsings = ambiguousMatch.parse.map(morphemeSequence => {
            	const parsedMorphemes = morphemeSequence.map(m => ({
                	morpheme: orthography === "modern" ? classicalToModern(m.morpheme) : m.morpheme,
                	details: m.details
            	}));
            	return {
                	morphemes: parsedMorphemes,
                	englishTranslation: new NahuatlTranslator(this.#lexicon).generateEnglishTranslation(morphemeSequence)
            	};
        	});
        	return {
            	success: true,
            	parsings: parsings
        	};
    	}
	
    	// Check for invariable morphemes (e.g., "nican", "axcanah")
    	const invariableMatch = this.#sortedAllInvariables.find(m => m.morpheme === processedWord);
    	if (invariableMatch) {
        	const parsedMorphemes = [{ 
            	morpheme: orthography === "modern" ? classicalToModern(invariableMatch.morpheme) : invariableMatch.morpheme, 
            	details: invariableMatch 
        	}];
        	const englishTranslation = new NahuatlTranslator(this.#lexicon).generateEnglishTranslation(parsedMorphemes);
        	return {
            	success: true,
            	parsings: [{
                	morphemes: parsedMorphemes,
                	englishTranslation: englishTranslation
            	}]
        	};
    	}
	
    	// Determine if the word starts with an imperative prefix
    	let isImperativeContext = false;
    	const imperativePrefix = this.#sortedAllPrefixes.find(m => m.category === "imperative" && processedWord.startsWith(m.morpheme));
    	if (imperativePrefix) {
        	isImperativeContext = true;
    	}
	
    	// Backtracking parsing with excluded morphemes
    	let excludedMorphemes = new Set(); // Track morphemes to exclude
    	let allParses = null;
    	let firstPassMorphemes = []; // Track morphemes found in first pass
    	
    	do {
        	// Start the recursive suffix parsing with excluded morphemes
        	const result = this.#parseSuffixesRecursivelyWithExclusions(
            	processedWord, 
            	[], 
            	isImperativeContext,
            	excludedMorphemes,
            	firstPassMorphemes.length === 0 // isFirstPass
        	);
        	
        	allParses = result.validParses;
        	if (firstPassMorphemes.length === 0) {
            	firstPassMorphemes = result.identifiedMorphemes; // Store morphemes from first pass
        	}
        	
        	if (!allParses || allParses.length === 0) {
            	// Find the rightmost morpheme that hasn't been excluded yet
            	let rightmostMorpheme = null;
            	for (let i = firstPassMorphemes.length - 1; i >= 0; i--) {
                	const morpheme = firstPassMorphemes[i];
                	if (!excludedMorphemes.has(morpheme.key)) {
                    	rightmostMorpheme = morpheme;
                    	break;
                	}
            	}
            	
            	if (rightmostMorpheme) {
                	excludedMorphemes.add(rightmostMorpheme.key);
            	} else {
                	// All morphemes have been tried as exclusions
                	break;
            	}
        	}
    	} while ((!allParses || allParses.length === 0) && excludedMorphemes.size < firstPassMorphemes.length);
	
    	if (!allParses || allParses.length === 0) {
        	return { success: false, error: `Failed to find a complete and valid morpheme parse for '${word}'.`, parsings: [] };
    	}
	
    	// Convert all valid parses to the expected format and generate translations
    	const parsings = allParses.map(parse => {
        	const parsedMorphemes = [];
        	parse.prefixes.forEach(p => parsedMorphemes.push({ 
            	morpheme: orthography === "modern" ? classicalToModern(p.morpheme) : p.morpheme, 
            	details: p 
        	}));
        	parse.stems.forEach(s => parsedMorphemes.push({ 
            	morpheme: orthography === "modern" ? classicalToModern(s.morpheme) : s.morpheme, 
            	details: s 
        	}));
        	parse.suffixes.forEach(s => parsedMorphemes.push({ 
            	morpheme: orthography === "modern" ? classicalToModern(s.morpheme) : s.morpheme, 
            	details: s 
        	}));
	
        	const englishTranslation = new NahuatlTranslator(this.#lexicon).generateEnglishTranslation(parsedMorphemes);
	
        	return {
            	morphemes: parsedMorphemes,
            	englishTranslation: englishTranslation
        	};
    	});
	
    	// Filter out grammatically invalid combinations of morphemes
    	const validParsings = this.#filterInvalidCombinations(parsings);
	
    	// Deduplicate the parsings before returning
    	const uniqueParsings = this.#deduplicateParsings(validParsings);
	
    	return {
        	success: true,
        	parsings: uniqueParsings
    	};
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
	#parseSuffixesRecursivelyWithExclusions(currentSegment, currentSuffixes, isImperativeContext, excludedMorphemes = new Set(), isFirstPass = true) {
    	let identifiedMorphemes = []; // Track all morphemes identified in this pass
    	
    	if (currentSegment.length === 0) {
        	const results = this.#parseLeftRemainderWithState("", currentSuffixes, null);
        	const validResults = results.filter(result => 
            	result.unparsedRemainder.length === 0 && 
            	(result.precedingStems.length > 0 || result.prefixes.length > 0)
        	);
        	return {
            	validParses: validResults.map(result => ({
                	stems: result.precedingStems,
                	prefixes: result.prefixes,
                	suffixes: currentSuffixes.slice().reverse()
            	})),
            	identifiedMorphemes: identifiedMorphemes
        	};
    	}
	
    	let allValidParses = [];
    	let allIdentifiedMorphemes = [];
	
    	for (const suffix of this.#sortedAllSuffixes) {
        	if (currentSegment.endsWith(suffix.morpheme)) {
            	// Create unique key for this morpheme instance
            	const morphemeKey = `${suffix.morpheme}-${suffix.type}-${currentSegment.length - suffix.morpheme.length}`;
            	
            	// Skip if this morpheme is excluded
            	if (excludedMorphemes.has(morphemeKey)) {
                	continue;
            	}
            	
            	// Track this morpheme if it's the first pass
            	if (isFirstPass) {
                	identifiedMorphemes.push({
                    	morpheme: suffix.morpheme,
                    	type: suffix.type,
                    	key: morphemeKey,
                    	position: currentSegment.length - suffix.morpheme.length
                	});
            	}
            	
            	// Conditional logic for 'can' based on isImperativeContext
            	let actualSuffixToUse = suffix;
            	if (suffix.morpheme === "can") {
                	if (isImperativeContext) {
                    	const pluralCan = this.#lexicon.find(m => m.morpheme === "can" && m.category === "plural");
                    	if (pluralCan) actualSuffixToUse = pluralCan;
                	} else {
                    	const locativeCan = this.#lexicon.find(m => m.morpheme === "can" && m.category === "locative");
                    	if (locativeCan) actualSuffixToUse = locativeCan;
                	}
            	}
	
            	const remainder = currentSegment.slice(0, -actualSuffixToUse.morpheme.length);
            	const newSuffixes = [...currentSuffixes, actualSuffixToUse];
	
            	// Try all parsing methods
            	const verbResults = this.#tryParseVerbStem(remainder, newSuffixes);
            	const nounResults = this.#tryParseNounStem(remainder, newSuffixes);
            	const prefixResults = this.#tryParsePrefixesAndPrecedingStems(remainder, newSuffixes);
	
            	allValidParses.push(...(verbResults || []));
            	allValidParses.push(...(nounResults || []));
            	allValidParses.push(...(prefixResults || []));
	
            	// Continue recursively
            	const recursiveResult = this.#parseSuffixesRecursivelyWithExclusions(
                	remainder, 
                	newSuffixes, 
                	isImperativeContext,
                	excludedMorphemes,
                	isFirstPass
            	);
            	
            	if (recursiveResult.validParses) {
                	allValidParses.push(...recursiveResult.validParses);
            	}
            	
            	if (isFirstPass) {
                	allIdentifiedMorphemes.push(...recursiveResult.identifiedMorphemes);
            	}
        	}
    	}
	
    	// If no suffix was found, try to parse the whole currentSegment as a stem/prefix combination
    	const directResults = this.#parseLeftRemainderWithState(currentSegment, currentSuffixes, null);
    	const validDirectResults = directResults.filter(result => 
        	result.unparsedRemainder.length === 0 && 
        	(result.precedingStems.length > 0 || result.prefixes.length > 0)
    	);
    	allValidParses.push(...validDirectResults.map(result => ({
        	stems: result.precedingStems,
        	prefixes: result.prefixes,
        	suffixes: currentSuffixes.slice().reverse()
    	})));
	
    	return {
        	validParses: allValidParses.length > 0 ? allValidParses : null,
        	identifiedMorphemes: isFirstPass ? [...identifiedMorphemes, ...allIdentifiedMorphemes] : []
    	};
	}

    /**
     * Attempts to parse a verb stem from the current segment
     * @param {string} segment - The current word segment
     * @param {Array} currentSuffixes - Array of currently identified suffixes
     * @returns {Array|null} Array of valid parsings or null if no verb stem found
     */
    #tryParseVerbStem(segment, currentSuffixes) {
        const stem = this.#sortedAllStems.find(s => s.type === "verb_stem" && segment.endsWith(s.morpheme));
        if (stem) {
            const remainder = segment.slice(0, -stem.morpheme.length);
            const results = this.#parseLeftRemainderWithState(remainder, currentSuffixes, stem);
            return results
                .filter(result => result.unparsedRemainder.length === 0)
                .map(result => ({
                    stems: result.precedingStems,
                    prefixes: result.prefixes,
                    suffixes: currentSuffixes.slice().reverse()
                }));
        }
        return null;
    }

    /**
     * Attempts to parse a noun stem from the current segment
     * @param {string} segment - The current word segment
     * @param {Array} currentSuffixes - Array of currently identified suffixes
     * @returns {Array|null} Array of valid parsings or null if no noun stem found
     */
    #tryParseNounStem(segment, currentSuffixes) {
        const stem = this.#sortedAllNounStems.find(s => segment.endsWith(s.morpheme));
        if (stem) {
            const remainder = segment.slice(0, -stem.morpheme.length);
            const results = this.#parseLeftRemainderWithState(remainder, currentSuffixes, stem);
            return results
                .filter(result => result.unparsedRemainder.length === 0)
                .map(result => ({
                    stems: result.precedingStems,
                    prefixes: result.prefixes,
                    suffixes: currentSuffixes.slice().reverse()
                }));
        }
        return null;
    }

    /**
     * Attempts to parse prefixes and stems from the current segment
     * @param {string} segment - The current word segment
     * @param {Array} currentSuffixes - Array of currently identified suffixes
     * @returns {Array} Array of valid parsings
     */
    #tryParsePrefixesAndPrecedingStems(segment, currentSuffixes) {
        const results = this.#parseLeftRemainderWithState(segment, currentSuffixes, null);
        return results
            .filter(result => result.unparsedRemainder.length === 0 && 
                             (result.precedingStems.length > 0 || result.prefixes.length > 0))
            .map(result => ({
                stems: result.precedingStems,
                prefixes: result.prefixes,
                suffixes: currentSuffixes.slice().reverse()
            }));
    }

    /**
     * Parses the remaining segment using state-based parsing
     * @param {string} remainder - The remaining word segment to parse
     * @param {Array} suffixes - Array of identified suffixes
     * @param {Object|null} [initialMorphemeDetails=null] - Initial morpheme details if known
     * @returns {Array} Array of parsing states with stems, prefixes and remaining segments
     */
    #parseLeftRemainderWithState(remainder, suffixes, initialMorphemeDetails = null) {
    	// Start with a single parsing state
    	let currentStates = [{
        	prefixes: [],
        	stems: initialMorphemeDetails ? [initialMorphemeDetails] : [],
        	remainder: remainder
    	}];
	
    	let morphemeFoundInIteration = true;
    	while (morphemeFoundInIteration) {
        	morphemeFoundInIteration = false;
        	let newStates = [];
	
        	for (const state of currentStates) {
            	if (state.remainder.length === 0) {
                	newStates.push(state);
                	continue;
            	}
	
            	let foundMatch = false;
            	let possibleMatches = [];
            	
            	// 1. Try to match stems from the END of the remainder
            	// Stems should be matched first to establish the word structure
            	for (const stem of this.#sortedAllStems) {
                	if (state.remainder.endsWith(stem.morpheme)) {
                    	const newRemainder = state.remainder.slice(0, -stem.morpheme.length);
                    	const newState = {
                        	prefixes: [...state.prefixes],
                        	stems: [stem, ...state.stems], // Add to front since we're working backwards
                        	remainder: newRemainder
                    	};
                    	possibleMatches.push(newState);
                    	foundMatch = true;
                    	morphemeFoundInIteration = true;                    	
                	}
            	}
            	
            	// 2. Try to match prefixes from the BEGINNING of the remainder
            	// Only do this if we haven't found any stems in this iteration (to avoid conflicts)
            	if (!foundMatch) {
                	for (const prefix of this.#sortedAllPrefixes) {
                    	if (state.remainder.startsWith(prefix.morpheme)) {
                        	// Apply validation for ambiguous prefixes
                        	let isValid = true;
                        	if (this.#isAmbiguousPrefix(prefix.morpheme)) {
                            	isValid = this.#isValidAmbiguousPrefix(prefix, state, suffixes);
                        	} else {
                            	isValid = this.#isValidPrefixOrder(prefix, state);
                        	}
                        	
                        	if (isValid) {
                            	const newRemainder = state.remainder.slice(prefix.morpheme.length);
                            	const newState = {
                                	prefixes: [...state.prefixes, prefix],
                                	stems: [...state.stems],
                                	remainder: newRemainder
                            	};
                            	possibleMatches.push(newState);
                            	foundMatch = true;
                            	morphemeFoundInIteration = true;
                        	}
                    	}
                	}
                	
                	// Also try imperative prefixes
                	for (const imperative of this.#lexicon.filter(m => m.category === "imperative")) {
                    	if (state.remainder.startsWith(imperative.morpheme)) {
                        	const newRemainder = state.remainder.slice(imperative.morpheme.length);
                        	const newState = {
                            	prefixes: [...state.prefixes, imperative],
                            	stems: [...state.stems],
                            	remainder: newRemainder
                        	};
                        	possibleMatches.push(newState);
                        	foundMatch = true;
                        	morphemeFoundInIteration = true;
                    	}
                	}
            	}
	
            	// Add all possible matches to newStates
            	if (possibleMatches.length > 0) {
                	newStates.push(...possibleMatches);
            	} else if (!foundMatch) {
                	// If no match found, keep the current state as-is
                	newStates.push(state);
            	}
        	}
	
        	currentStates = newStates;
    	}
	
    	// Filter out states where prefixes exist without stems, and convert to expected format
    	const validStates = currentStates.filter(state => state.stems.length > 0 || state.prefixes.length === 0);
    	
    	return validStates.map(state => ({
        	precedingStems: state.stems,
        	prefixes: state.prefixes,
        	unparsedRemainder: state.remainder
    	}));
	}

    /**
     * Validates the order of prefixes in a word
     * @param {Object} prefix - The prefix to validate
     * @param {Object} state - Current parsing state
     * @returns {boolean} Whether the prefix order is valid
     */
    #isValidPrefixOrder(prefix, state) {
        // Apply basic ordering rules for non-ambiguous prefixes
        const existingRoles = state.prefixes.map(p => p.role);
        
        // Subject prefixes must come before object prefixes
        if (prefix.role === 'object' && existingRoles.includes('subject')) {
            return true; // This is the correct order
        }
        
        if (prefix.role === 'subject' && existingRoles.includes('object')) {
            return false; // Wrong order
        }
        
        // Don't allow multiple prefixes of the same role (except for some special cases)
        if (existingRoles.includes(prefix.role)) {
            return false;
        }
        
        return true;
    }

    /**
     * Checks if a morpheme is an ambiguous prefix
     * @param {string} morpheme - The morpheme to check
     * @returns {boolean} Whether the morpheme is an ambiguous prefix
     */
    #isAmbiguousPrefix(morpheme) {
        return ["ti", "t", "no", "mo", "to", "m", "n"].includes(morpheme);
    }

    /**
     * Validates an ambiguous prefix based on context and grammar rules
     * @param {Object} prefix - The ambiguous prefix to validate
     * @param {Object} state - Current parsing state
     * @param {Array} suffixes - Array of identified suffixes
     * @returns {boolean} Whether the ambiguous prefix is valid in this context
     */
    #isValidAmbiguousPrefix(prefix, state, suffixes) {
        // Handle different types of ambiguous prefixes
        switch (prefix.morpheme) {
            case "ti":
            case "t":
                if (prefix.role === "subject") {
                    return this.#isValidTiPrefix(prefix, suffixes) && this.#isValidPrefixOrder(prefix, state);
                } else if (prefix.role === "possessive" || prefix.role === "reflexive") {
                    return this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
                }
                return false;
                
            case "no":
            case "mo":
            case "to":
            case "m":
            case "n":
                // Special logic for "t" and "n" - these can be either subject or possessive
                if (prefix.morpheme === "t" || prefix.morpheme === "n") {
                    return this.#isValidTOrNPrefix(prefix, state, suffixes);
                }
                
                if (prefix.role === "possessive" || prefix.role === "reflexive") {
                    return this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
                } else if (prefix.role === "subject") {
                    // Subject prefixes are valid, but check for conflicts and ordering
                    return this.#isValidPrefixOrder(prefix, state);
                } else if (prefix.role === "object") {
                    // Object prefixes are valid, but check for conflicts and ordering
                    return this.#isValidPrefixOrder(prefix, state);
                }
                return false;
                
            default:
                return true;
        }
    }

    /**
     * Validates 't' or 'n' prefixes which can be either subject or possessive
     * @param {Object} prefix - The t/n prefix to validate
     * @param {Object} state - Current parsing state
     * @param {Array} suffixes - Array of identified suffixes
     * @returns {boolean} Whether the t/n prefix is valid in this context
     */
    #isValidTOrNPrefix(prefix, state, suffixes) {
    	// Special logic for "t" and "n" prefixes which can be either subject or possessive
    	
    	// Check for absolutive suffixes (indicating predicate noun construction)
    	const hasAbsolutiveSuffix = suffixes.some(s => 
        	s.category === "absolutive" || 
        	["li", "tli", "tl", "tzintli"].includes(s.morpheme)
    	);
    	
    	// Check for "huan" suffix (indicating possessive plural)
    	const hasHuanSuffix = suffixes.some(s => s.morpheme === "huan");
    	
    	// Check for noun stems in the state
    	const hasNounStem = state.stems.some(s => s.type === "noun_stem");
    	
    	// Check for verb stems in the state  
    	const hasVerbStem = state.stems.some(s => s.type === "verb_stem");
    	
    	// Check if any noun stem is irregular (doesn't take absolutive suffix)
    	const hasIrregularNoun = state.stems.some(s => 
        	s.type === "noun_stem" && s.absolutive_suffix === false
    	);
    	
    	if (prefix.role === "subject") {
        	// Subject interpretation is valid when:
        	
        	// CASE 1: Noun predicate construction
        	// 1. There's an absolutive suffix AND there's a noun stem
        	// 2. OR there's an irregular noun that doesn't take absolutive suffixes
        	const validForNoun = ((hasAbsolutiveSuffix && hasNounStem) || 
                             	(hasIrregularNoun && !hasAbsolutiveSuffix));
        	
        	// CASE 2: Verb construction
        	// Subject prefixes are generally valid with verb stems
        	const validForVerb = hasVerbStem;
        	
        	return (validForNoun || validForVerb) && this.#isValidPrefixOrder(prefix, state);
    	} 
    	else if (prefix.role === "possessive") {
        	// Possessive interpretation is valid when:
        	// 1. There's a "huan" suffix (possessive plural: "icalhuan" = "his/her/its boats")
        	// 2. OR there's no absolutive suffix AND it's not an irregular noun used as predicate
        	// 3. OR there's an irregular noun (which can be possessive: "my seller")
        	// 4. AND there's a noun stem
        	const isValidPossessive = hasNounStem && (
            	hasHuanSuffix || 
            	(!hasAbsolutiveSuffix && !hasIrregularNoun) ||
            	(hasIrregularNoun && !hasAbsolutiveSuffix)
        	);
        	
        	return isValidPossessive && this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
    	}
    	
    	return false;
	}

    /**
     * Validates possessive and reflexive prefix usage based on grammar rules
     * @param {Object} prefix - The possessive/reflexive prefix to validate
     * @param {Object} state - Current parsing state
     * @param {Array} suffixes - Array of identified suffixes
     * @returns {boolean} Whether the possessive/reflexive prefix is valid in this context
     */
    #isValidPossessiveReflexivePrefix(prefix, state, suffixes) {
        // This method should only be called for possessive/reflexive ambiguous prefixes
        if (prefix.role !== "possessive" && prefix.role !== "reflexive") {
            return false;
        }

        // Check for conflicting prefixes
        const hasSubjectPrefix = state.prefixes.some(p => p.role === "subject");
        const hasObjectPrefix = state.prefixes.some(p => p.role === "object");
        const hasExistingPossessive = state.prefixes.some(p => p.role === "possessive");
        const hasExistingReflexive = state.prefixes.some(p => p.role === "reflexive");

        // Don't allow multiple possessive or reflexive prefixes
        if ((prefix.role === "possessive" && hasExistingPossessive) ||
            (prefix.role === "reflexive" && hasExistingReflexive)) {
            return false;
        }

        // Don't allow reflexive with existing object prefix
        if (hasObjectPrefix && prefix.role === "reflexive") {
            return false;
        }

        // Don't allow possessive with existing subject prefix (they're mutually exclusive)
        if (hasSubjectPrefix && prefix.role === "possessive") {
            return false;
        }

        // Determine the type of word we're dealing with
        const hasNounStem = state.stems.some(s => s.type === "noun_stem");
        const hasVerbStem = state.stems.some(s => s.type === "verb_stem");
        const hasNominalizingSuffix = this.#hasNominalizingSuffix(suffixes);

        // Apply used_with constraints early
        if (prefix.used_with) {
            if (prefix.used_with === 'noun' && !hasNounStem && !hasNominalizingSuffix) {
                return false;
            }
            if (prefix.used_with === 'verb' && (!hasVerbStem || hasNominalizingSuffix)) {
                return false;
            }
        }

        // For nouns or nominalized verbs: use possessive
        if (hasNounStem || hasNominalizingSuffix) {
            return prefix.role === "possessive";
        }
        
        // For unnominalized verbs: use reflexive with subject agreement
        if (hasVerbStem && !hasNominalizingSuffix) {
            if (prefix.role !== "reflexive") {
                return false;
            }

            // Check for subject agreement in reflexive verbs
            const subjectPrefixes = state.prefixes.filter(p => p.role === "subject");
            
            if (subjectPrefixes.length > 0) {
                // If there's an explicit subject prefix, reflexive must agree
                const subjectPrefix = subjectPrefixes[0]; // Take the first/main subject prefix
                return prefix.person === subjectPrefix.person && prefix.number === subjectPrefix.number;
            } else {
                // If no explicit subject prefix, default to 3rd person singular
                // This handles cases like "moitta" which means "he/she/it sees him/her/itself"
                return prefix.person === "third" && prefix.number === "singular";
            }
        }

        // If we can't determine the word type yet (no stems), be conservative
        // For ambiguous cases where we can't determine context yet, allow both
        // but the final validation in #filterInvalidCombinations will catch inconsistencies
        return true;
    }

    /**
     * Validates 'ti' prefix interpretation based on suffix context
     * @param {Object} tiPrefix - The ti prefix to validate
     * @param {Array} suffixes - Array of identified suffixes
     * @returns {boolean} Whether the ti prefix interpretation is valid
     */
    #isValidTiPrefix(tiPrefix, suffixes) {
        const hasPluralSuffix = suffixes.some(s => pluralSuffixMorphemes.has(s.morpheme));
        const hasSingularSuffix = suffixes.some(s => nominalizingSuffixMorphemes.has(s.morpheme));
    
        // If a plural suffix exists, 'ti' must be 'we' (1st person plural)
        if (hasPluralSuffix) {
            return tiPrefix.person === "first" && tiPrefix.number === "plural";
        }
    
        // If a singular (absolutive) suffix exists, 'ti' must be 'you (sg)' (2nd person singular)
        if (hasSingularSuffix) {
            return tiPrefix.person === "second" && tiPrefix.number === "singular";
        }
    
        // If no determinative suffix is found, allow both interpretations.
        // This handles verbs without explicit number marking in their suffixes.
        // Return true for both "we" and "you (sg)" interpretations
        return (tiPrefix.person === "first" && tiPrefix.number === "plural") || 
               (tiPrefix.person === "second" && tiPrefix.number === "singular");
    }

    /**
     * Checks if any of the suffixes are nominalizing
     * @param {Array} suffixes - Array of suffixes to check
     * @returns {boolean} Whether a nominalizing suffix is present
     */
    #hasNominalizingSuffix(suffixes) {
        // Check if any of the suffixes are nominalizing
        return suffixes.some(suffix => suffix.nominalizing || nominalizingSuffixMorphemes.has(suffix.morpheme));
    }
}
