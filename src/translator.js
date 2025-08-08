import { pluralSuffixMorphemes, nominalizingSuffixMorphemes } from './helper.js';

export class NahuatlTranslator {
    constructor(sortedNahuatlLexicon) {
        this.lexicon = sortedNahuatlLexicon;
        this.allStems = this.lexicon.filter(m => m.type === "verb_stem" || m.type === "noun_stem");
	}

    /**
     * Generates English translations from an array of parsed Nahuatl morpheme sets.
     * @param {Array<Array<object>>} parsingsArray An array of parsings, each containing morphemes.
     * @returns {Array<string>} An array of English translations.
     */
    generateEnglishTranslations(parsingsArray) {
        return parsingsArray.map(parsing => this.generateEnglishTranslation(parsing));
    }

    /**
     * Generates an English translation from a list of parsed Nahuatl morphemes.
     * @param {Array<object>} parsedMorphemes An array of objects, each containing {morpheme: string, details: object}.
     * @returns {string} The English translation.
     */
    generateEnglishTranslation(parsedMorphemes) {
        let subjectPrefixDetails = null;
        let objectPrefixDetails = null; // Specific object (e.g., him/her/it)
        let possessivePrefixDetails = null;
        let reflexivePrefixDetails = null;
        let negationPrefixDetails = null;
        let imperativePrefixDetails = null;

        let mainVerbStemDetails = null;
        let primaryNounStemDetails = null; // Rightmost noun stem
        let allNounStemsDetails = []; // To collect all noun stems for compounding

        let isImperfectVerb = false;
        let isLliParticiple = false;
        let isNominalizedByOtherSuffix = false;
        let otherNominalizingSuffixDetails = null;
        let isRightmostStemNominalizedVerb = false;

        let tlaObjectPresent = false;
        let teObjectPresent = false;

        let coreEnglishString = "";
        let finalTranslation = "";
        let requiresWrapper = false; // Indicates if the translation needs (it is a) or similar

        let hasPluralSuffix = parsedMorphemes.some(m => m.details.type === "suffix" && pluralSuffixMorphemes.has(m.morpheme));

        // First pass to identify main components and collect noun stems for compounding
        for (const { morpheme, details } of parsedMorphemes) {
            if (details.type === "prefix") {
                if (details.role === "subject") {
                    subjectPrefixDetails = details;
                }
                else if (details.role === "object" && morpheme !== "tla" && morpheme !== "te") objectPrefixDetails = details;
                else if (details.role === "possessive") possessivePrefixDetails = details;
                else if (details.role === "reflexive") reflexivePrefixDetails = details;
                else if (details.role === "negation") negationPrefixDetails = details;
                else if (details.category === "imperative") imperativePrefixDetails = details;
                else if (morpheme === "tla" && details.role === "object") tlaObjectPresent = true;
                else if (morpheme === "te" && details.role === "object") teObjectPresent = true; // For 'te' impersonal object prefix
            } else if (details.type === "verb_stem") {
                mainVerbStemDetails = details;
            } else if (details.type === "noun_stem") {
                // Add all noun stems for compounding
                allNounStemsDetails.push(details);
                // The rightmost noun stem is the primary one
                primaryNounStemDetails = details;
            } else if (details.type === "suffix") {
                if (details.category === "imperfect") isImperfectVerb = true;
                if (details.nominalizing) {
                    // Check for specific nominalizing suffixes
                    if (morpheme === "lli") isLliParticiple = true;
                    if (morpheme === "ni") {
                        // 'ni' as agentive noun, not just any nominalizing suffix
                        isNominalizedByOtherSuffix = true;
                        otherNominalizingSuffixDetails = details;
                        if (mainVerbStemDetails && mainVerbStemDetails.type === "verb_stem") {
                            isRightmostStemNominalizedVerb = true;
                        }
                    } else if (nominalizingSuffixMorphemes.has(morpheme)) {
                        isNominalizedByOtherSuffix = true;
                        otherNominalizingSuffixDetails = details;
                        if (mainVerbStemDetails && mainVerbStemDetails.type === "verb_stem") {
                            isRightmostStemNominalizedVerb = true;
                        }
                    }
                }
            }
        }

        // Helper function to get plural form of a noun
        const getPluralForm = (nounDetails) => {
            if (nounDetails.english_plural) {
                return nounDetails.english_plural;
            }
            // Default pluralization rules
            const english = nounDetails.english;
            if (english.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(english[english.length - 2])) {
                return english.slice(0, -1) + 'ies';
            } else if (english.endsWith('s') || english.endsWith('sh') || english.endsWith('ch') || 
                       english.endsWith('x') || english.endsWith('z')) {
                return english + 'es';
            } else {
                return english + 's';
            }
        };

        // Handle negation (ahmo/amo prefix)
        if (negationPrefixDetails) {
            coreEnglishString += "not ";
        }

        // Handle imperative (x-, xi-) prefix
        if (imperativePrefixDetails) {
            coreEnglishString += imperativePrefixDetails.english + " ";
            requiresWrapper = false; // Imperatives don't need "he/she/it is" wrapper
        }

        // Determine core English string based on morpheme types
        if (isLliParticiple) {
            // Helper function to get past participle form
            const getPastParticiple = (verbStem) => {
                if (verbStem.pp) {
                    return verbStem.pp;
                }
                // Default past participle formation rules
                const english = verbStem.english;
                if (english.endsWith('e')) {
                    return english + 'd';
                } else {
                    return english + 'ed';
                }
            };

            // 'lli' creates participles. 'tla' prefix adds "something "
            if (mainVerbStemDetails) {
                const pastParticiple = getPastParticiple(mainVerbStemDetails);
                if (tlaObjectPresent) {
                    if (possessivePrefixDetails) {
                        coreEnglishString = `${possessivePrefixDetails.english} something ${pastParticiple}`;
                    } else {
                        coreEnglishString = `something ${pastParticiple}`;
                    }
                } else {
                    if (possessivePrefixDetails) {
                        coreEnglishString = `${possessivePrefixDetails.english} ${pastParticiple}`;
                    } else {
                        coreEnglishString = pastParticiple;
                    }
                }
            } else {
                if (possessivePrefixDetails) {
                    coreEnglishString = tlaObjectPresent ? `${possessivePrefixDetails.english} something` : possessivePrefixDetails.english;
                } else {
                    coreEnglishString = tlaObjectPresent ? "something" : "";
                }
            }
            requiresWrapper = true;
            // Clear possessivePrefixDetails since we've already handled it
            possessivePrefixDetails = null;
        } else if (isRightmostStemNominalizedVerb && otherNominalizingSuffixDetails && otherNominalizingSuffixDetails.morpheme === "ni") {
            // Handle 'ni' agent noun formation - this case should be handled BEFORE the regular verb case
            // Helper function to get agent form for 'ni' suffix
            const getAgentForm = (verbStem) => {
                if (verbStem.agent) {
                    return verbStem.agent;
                }
                // Default agent formation rules
                const english = verbStem.english;
                if (english.endsWith('e')) {
                    return english + 'r';
                } else {
                    return english + 'er';
                }
            };

            // Handle compound agent nouns like "word-knower"
            if (allNounStemsDetails.length > 0 && mainVerbStemDetails) {
                // Compound: noun stem(s) + verb stem with 'ni' suffix
                const agentForm = getAgentForm(mainVerbStemDetails);
                const nounParts = allNounStemsDetails.map(details => details.english);
                
                if (hasPluralSuffix) {
                    // Pluralize the agent form
                    let pluralAgent = agentForm;
                    if (agentForm.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(agentForm[agentForm.length - 2])) {
                        pluralAgent = agentForm.slice(0, -1) + 'ies';
                    } else if (agentForm.endsWith('s') || agentForm.endsWith('sh') || agentForm.endsWith('ch') || 
                               agentForm.endsWith('x') || agentForm.endsWith('z')) {
                        pluralAgent = agentForm + 'es';
                    } else {
                        pluralAgent = agentForm + 's';
                    }
                    coreEnglishString = nounParts.join('-') + '-' + pluralAgent;
                } else {
                    coreEnglishString = nounParts.join('-') + '-' + agentForm;
                }
            } else if (mainVerbStemDetails) {
                // Simple agent noun: just verb stem with 'ni' suffix
                let agentForm = getAgentForm(mainVerbStemDetails);
                if (hasPluralSuffix) {
                    // Pluralize the agent form
                    if (agentForm.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(agentForm[agentForm.length - 2])) {
                        agentForm = agentForm.slice(0, -1) + 'ies';
                    } else if (agentForm.endsWith('s') || agentForm.endsWith('sh') || agentForm.endsWith('ch') || 
                               agentForm.endsWith('x') || agentForm.endsWith('z')) {
                        agentForm = agentForm + 'es';
                    } else {
                        agentForm = agentForm + 's';
                    }
                }
                coreEnglishString = agentForm;
            }
            requiresWrapper = true;
        } else if (mainVerbStemDetails && !isNominalizedByOtherSuffix) {
            const getProgressiveForm = (verbStem) => {
                if (verbStem.progressive) {
                    return verbStem.progressive;
                }
                const english = verbStem.english;
                if (english.endsWith('e')) {
                    return english.slice(0, -1) + 'ing';
                } else {
                    return english + 'ing';
                }
            };
            let verbString = mainVerbStemDetails.english;

            // Check if this is a noun-verb compound (verbs like a noun)
            const hasNounStemBeforeVerb = allNounStemsDetails.length > 0 && mainVerbStemDetails;
            
            if (hasNounStemBeforeVerb) {
                // Handle "noun-verb" pattern as "verbs like a(n) noun"
                const nounString = allNounStemsDetails[allNounStemsDetails.length - 1].english; // Get the last noun stem
                
                // Apply verb tense/aspect based on suffixes
                if (isImperfectVerb) {
                    // Use progressive form for imperfect aspect
                    verbString = getProgressiveForm(mainVerbStemDetails);
                }

                // --- Third-person singular '-s' rule for verbs ---
                const isThirdPersonSingularSubject = (
                    !subjectPrefixDetails ||
                    (subjectPrefixDetails.english === "he/she/it" && !subjectPrefixDetails.plural)
                ) && !hasPluralSuffix && !imperativePrefixDetails;

                if (isThirdPersonSingularSubject && !isImperfectVerb && !isLliParticiple && !isNominalizedByOtherSuffix) {
                    if (!verbString.endsWith('s') && verbString !== "is" && verbString !== "are") {
                         verbString += 's';
                    }
                }

                // Determine article (a/an) for the noun
                const startsWithVowel = /^[aeiou]/i.test(nounString);
                const article = startsWithVowel ? "an" : "a";
                
                coreEnglishString += `${verbString} like ${article} ${nounString}`;
                requiresWrapper = false; // This is a complete verbal phrase, no wrapper needed
            } else {
                // Regular verb without noun compound
                
                // Apply verb tense/aspect based on suffixes
                if (isImperfectVerb) {
                    // Use progressive form for imperfect aspect
                    verbString = getProgressiveForm(mainVerbStemDetails);
                }

                // --- Third-person singular '-s' rule for verbs ---
                const isThirdPersonSingularSubject = (
                    !subjectPrefixDetails ||
                    (subjectPrefixDetails.english === "he/she/it" && !subjectPrefixDetails.plural)
                ) && !hasPluralSuffix && !imperativePrefixDetails; // Added imperativePrefixDetails to exclude imperatives

                if (isThirdPersonSingularSubject && !isImperfectVerb && !isLliParticiple && !isNominalizedByOtherSuffix) {
                    if (!verbString.endsWith('s') && verbString !== "is" && verbString !== "are") {
                         verbString += 's';
                    }
                }
                // Add the verb and append "something" if tla- prefix is present
                coreEnglishString += verbString + (tlaObjectPresent ? " something" : "");
            }

        } else if (allNounStemsDetails.length > 0) {
            // Compound noun translation with plural handling
            if (hasPluralSuffix && allNounStemsDetails.length === 1) {
                // Single noun with plural suffix - use plural form
                coreEnglishString += getPluralForm(primaryNounStemDetails);
            } else if (allNounStemsDetails.length > 1) {
                // Compound noun - only pluralize the last element if plural suffix present
                const compoundParts = allNounStemsDetails.map((details, index) => {
                    if (hasPluralSuffix && index === allNounStemsDetails.length - 1) {
                        return getPluralForm(details);
                    }
                    return details.english;
                });
                coreEnglishString += compoundParts.join('-');
            } else {
                // Single noun, no plural suffix
                coreEnglishString += primaryNounStemDetails.english;
            }
            // If it's a noun stem, it generally requires a wrapper
            requiresWrapper = true;
        } else if (isRightmostStemNominalizedVerb && otherNominalizingSuffixDetails) {
            // Handle other nominalized verb forms (non-'ni')
            let nominalizedForm = (mainVerbStemDetails ? mainVerbStemDetails.english : '') + otherNominalizingSuffixDetails.english_suffix;
            if (hasPluralSuffix) {
                // Apply default pluralization to nominalized forms
                if (nominalizedForm.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(nominalizedForm[nominalizedForm.length - 2])) {
                    nominalizedForm = nominalizedForm.slice(0, -1) + 'ies';
                } else if (nominalizedForm.endsWith('s') || nominalizedForm.endsWith('sh') || nominalizedForm.endsWith('ch') || 
                           nominalizedForm.endsWith('x') || nominalizedForm.endsWith('z')) {
                    nominalizedForm = nominalizedForm + 'es';
                } else {
                    nominalizedForm = nominalizedForm + 's';
                }
            }
            coreEnglishString = nominalizedForm;
            requiresWrapper = true;
        } else {
            // Fallback for cases like particles or unparsed parts if any.
            coreEnglishString += parsedMorphemes.map(m => m.details.english || m.morpheme).join(' ');
            if (parsedMorphemes.some(m => m.details.type === "noun_stem")) {
                requiresWrapper = true;
            }
        }

        // Handle object prefixes (e.g., qui- for him/her/it)
        if (objectPrefixDetails) {
            coreEnglishString += " " + objectPrefixDetails.english;
        }
        
        // --- Possessive Prefix Handling ---
        // Apply possessive BEFORE wrapper logic to ensure it's included
        if (possessivePrefixDetails) {
            if (coreEnglishString) {
                coreEnglishString = possessivePrefixDetails.english + " " + coreEnglishString;
            } else {
                coreEnglishString = possessivePrefixDetails.english;
            }
            requiresWrapper = true; // A possessive noun always needs a wrapper like "(it is) my house"
        }

        // Handle reflexive prefixes (mo- for himself/herself/itself)
        if (reflexivePrefixDetails) {
            coreEnglishString += " " + reflexivePrefixDetails.english;
        }

        // If no explicit subject prefix, determine implicit subject and copula
        if (!subjectPrefixDetails && !imperativePrefixDetails) {
            if (requiresWrapper) {
                // For nouns and nominalized forms
                let implicitPronoun = "it";
                let copula = "is";

                if (hasPluralSuffix) { // This correctly covers plural nouns like 'cihuah'
                    copula = "are";
                    implicitPronoun = "they";
                }

                let addArticleA = false;

                // Determine if 'a' article is needed *before* overrides
                // This is primarily for countable singular nouns without possessives
                if (primaryNounStemDetails && primaryNounStemDetails.countable && !hasPluralSuffix) {
                    addArticleA = true;
                } else if (isRightmostStemNominalizedVerb && otherNominalizingSuffixDetails && otherNominalizingSuffixDetails.countable && !hasPluralSuffix) {
                    addArticleA = true;
                }
                
                // --- Universal overrides to prevent 'a' ---
                // These conditions *override* the above 'addArticleA = true'
                // if a possessive, object prefix ('tla', 'te'), or participle is present.
                if (isLliParticiple || tlaObjectPresent || teObjectPresent || possessivePrefixDetails) {
                    addArticleA = false;
                }

                // Only add wrapper if no main verb stem or if it's nominalized (including 'ni' agent noun)
                // Or if it's a possessive noun phrase
                if (!mainVerbStemDetails || isLliParticiple || isNominalizedByOtherSuffix || possessivePrefixDetails || isRightmostStemNominalizedVerb) {
                    finalTranslation = `(${implicitPronoun} ${copula}` + (addArticleA ? ` a` : "") + `) ` + coreEnglishString;
                }
            } else if (mainVerbStemDetails) {
                // For pure verbs without explicit subject, add implicit third person subject
                let implicitSubject = "he/she/it";
                if (hasPluralSuffix) {
                    implicitSubject = "they";
                }
                finalTranslation = `${implicitSubject} ${coreEnglishString}`;
            } else {
                // Fallback for other cases
                finalTranslation = coreEnglishString;
            }
        } else if (subjectPrefixDetails) { // If there is an explicit subject prefix
            // Construct translation based on explicit subject and verb/noun
            let subjectString = subjectPrefixDetails.english;
            let verbOrNounString = coreEnglishString;

            // Check if this is a noun-verb compound with subject
            const hasNounStemBeforeVerb = allNounStemsDetails.length > 0 && mainVerbStemDetails;

            if (mainVerbStemDetails && !isLliParticiple && !isNominalizedByOtherSuffix) {
                // This handles both regular verbs and noun-verb compounds
                finalTranslation = `${subjectString} ${verbOrNounString}`;
            } else if (allNounStemsDetails.length > 0 || isLliParticiple || isNominalizedByOtherSuffix) {
                // For "ni-tlah-tla-tol-matini" -> "I am a word-knower"
                let copulaVerb = "is";
                if (subjectPrefixDetails.english === "I") copulaVerb = "am";
                else if (subjectPrefixDetails.english === "you (sg)") copulaVerb = "are";
                else if (subjectPrefixDetails.english === "we") copulaVerb = "are";
                else if (subjectPrefixDetails.english === "you (pl)") copulaVerb = "are";
                else if (subjectPrefixDetails.english === "he/she/it" && subjectPrefixDetails.plural) copulaVerb = "are";
                else if (subjectPrefixDetails.english === "he/she/it") copulaVerb = "is";

                let addArticleA = false;
                if (primaryNounStemDetails && primaryNounStemDetails.countable && !hasPluralSuffix && !hasNounStemBeforeVerb) {
                    addArticleA = true;
                } else if (isNominalizedByOtherSuffix && otherNominalizingSuffixDetails && otherNominalizingSuffixDetails.countable && !hasPluralSuffix) {
                    addArticleA = true;
                }

                // Override if object prefix or possessive
                if (tlaObjectPresent || teObjectPresent || possessivePrefixDetails) {
                    addArticleA = false;
                }

                // Don't add copula for noun-verb compounds since they're already complete verbal phrases
                if (hasNounStemBeforeVerb) {
                    finalTranslation = `${subjectString} ${verbOrNounString}`;
                } else {
                    finalTranslation = `${subjectString} ${copulaVerb}` + (addArticleA ? ` a` : "") + ` ${verbOrNounString}`;
                }
            } else {
                finalTranslation = `${subjectString} ${verbOrNounString}`;
            }
        } else {
            // Fallback for cases that don't fit the above, e.g., particles, interrogatives, adverbs.
            finalTranslation = coreEnglishString;
        }

        // Robust return to ensure a string is always returned
        return String(finalTranslation || '').trim().replace(/\s+/g, ' ');
    }
}
