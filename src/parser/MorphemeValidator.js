import { nominalizingSuffixMorphemes } from '../helper.js';

/**
 * Handles validation of morpheme combinations according to Nahuatl grammar rules
 */
export class MorphemeValidator {
  /**
     * Filters out invalid morpheme combinations based on grammatical rules
     * @param {Array} parsings - Array of potential morpheme parsings
     * @returns {Array} Array of valid parsings that follow Nahuatl grammar rules
     */
  filterInvalidCombinations(parsings) {
    return parsings.filter((p) => {
      const prefixes = p.morphemes.filter((m) => m.details.type === 'prefix');
      const stems = p.morphemes.filter((m) => m.details.type === 'verb_stem' || m.details.type === 'noun_stem');
      const suffixes = p.morphemes.filter((m) => m.details.type === 'suffix');

      // Find the rightmost (primary) stem
      const primaryStem = [...stems].reverse()[0];

      // Find plural suffixes (explicit ones like -h, -huan, etc.)
      const pluralSuffixes = suffixes.filter((s) => s.details.category === 'plural');

      if (!this.#validateStemRules(primaryStem, prefixes, suffixes)) {return false;}
      if (!this.#validateInanimateNounRules(primaryStem, prefixes, suffixes)) {return false;}
      if (!this.#validatePrefixRules(prefixes)) {return false;}
      if (!this.#validateSuffixRules(pluralSuffixes)) {return false;}
      if (!this.#validateContextRules(p, prefixes, stems, suffixes, primaryStem)) {return false;}

      return true;
    });
  }

  /**
     * Validates rules related to stem type and allowed affixes
     */
  #validateStemRules(primaryStem, prefixes, suffixes) {
    if (!primaryStem) {return false;}

    // If primary stem is a verb stem, it cannot take absolutive suffixes
    if (primaryStem.details.type === 'verb_stem') {
      const hasAbsolutiveSuffix = suffixes.some((s) =>
        s.details.category === 'absolutive',
      );
      if (hasAbsolutiveSuffix) {
        return false;
      }
    }

    // If primary stem is a noun stem, it cannot take object prefixes
    if (primaryStem.details.type === 'noun_stem') {
      const hasObjectPrefixes = prefixes.some((s) =>
        s.details.role === 'object',
      );
      if (hasObjectPrefixes) {
        return false;
      }
    }

    return true;
  }

  /**
     * Validates rules specific to inanimate nouns
     */
  #validateInanimateNounRules(primaryStem, prefixes, suffixes) {
    if (primaryStem?.details.type === 'noun_stem' && !primaryStem.details.animate) {
      const hasPossessivePrefix = prefixes.some((p) => p.details.role === 'possessive');
      const pluralSuffixes = suffixes.filter((s) => s.details.category === 'plural');

      // Rule 1: An inanimate noun cannot take a plural suffix
      if (pluralSuffixes.length > 0) {
        return false;
      }

      // Rule 2: An inanimate noun with no suffixes (implied -h) is invalid
      // UNLESS it:
      // a) has absolutiveSuffix set to false, OR
      // b) is possessed (has a possessive prefix)
      if (suffixes.length === 0 &&
                primaryStem.details.absolutiveSuffix !== false &&
                !hasPossessivePrefix) {
        return false;
      }
    }
    return true;
  }

  /**
     * Validates rules about prefix combinations and ordering
     */
  #validatePrefixRules(prefixes) {
    const hasReflexive = prefixes.some((p) => p.details.role === 'reflexive');
    const hasObject = prefixes.some((p) => p.details.role === 'object');
    const hasPossessive = prefixes.some((p) => p.details.role === 'possessive');
    const hasSubject = prefixes.some((p) => p.details.role === 'subject');

    // Rule 1: A verb is invalid if it has both a reflexive prefix and a direct object prefix
    if (hasReflexive && hasObject) {
      return false;
    }

    // Rule 2: Cannot have both subject and possessive prefixes (mutually exclusive)
    if (hasSubject && hasPossessive) {
      return false;
    }

    // Rule 3: Subject must come before object
    if (hasSubject && hasObject) {
      const subjectIndex = prefixes.findIndex((p) => p.details.role === 'subject');
      const objectIndex = prefixes.findIndex((p) => p.details.role === 'object');
      if (subjectIndex > objectIndex) {
        return false;
      }
    }

    // Rule 4: Cannot have both tla and c/qui prefixes
    const objectPrefixes = prefixes.filter((p) => p.details.role === 'object');
    if (objectPrefixes.some((p) => p.morpheme === 'tla') &&
            (objectPrefixes.some((p) => p.morpheme === 'qui') ||
             objectPrefixes.some((p) => p.morpheme === 'c'))) {
      return false;
    }

    return true;
  }

  /**
     * Validates rules about suffix combinations
     */
  #validateSuffixRules(pluralSuffixes) {
    // Multiple plural suffixes are not allowed on any noun
    if (pluralSuffixes.length > 1) {
      return false;
    }
    return true;
  }

  /**
     * Validates context-dependent rules about morpheme combinations
     */
  #validateContextRules(parsing, prefixes, stems, suffixes, primaryStem) {
    const hasPossessive = prefixes.some((p) => p.details.role === 'possessive');
    const hasPrimaryVerbStem = primaryStem?.details.type === 'verb_stem';
    const hasPrimaryNounStem = primaryStem?.details.type === 'noun_stem';
    const hasNominalizingSuffix = this.#hasNominalizingSuffix(suffixes.map((s) => s.details));

    // Rule 1: Context-dependent prefix usage validation
    for (const prefix of prefixes) {
      if (prefix.details.usedWith) {
        if (prefix.details.usedWith === 'noun' && !hasPrimaryNounStem && !hasNominalizingSuffix) {
          return false;
        }
        if (prefix.details.usedWith === 'verb' && (!hasPrimaryVerbStem || hasNominalizingSuffix)) {
          return false;
        }
      }
    }

    // Rule 2: Reflexive-subject agreement validation
    if (!this.#validateReflexiveAgreement(prefixes)) {
      return false;
    }

    // Rule 3: Possessive suffix context validation
    const hasPossessiveSuffix = suffixes.some((s) => s.details.category === 'possessive');
    if (hasPossessiveSuffix && !hasPossessive) {
      return false;
    }

    return true;
  }

  /**
     * Validates reflexive prefix agreement with subject
     */
  #validateReflexiveAgreement(prefixes) {
    const reflexivePrefixes = prefixes.filter((p) => p.details.role === 'reflexive');
    const subjectPrefixes = prefixes.filter((p) => p.details.role === 'subject');

    for (const reflexive of reflexivePrefixes) {
      if (subjectPrefixes.length > 0) {
        // If there's an explicit subject, reflexive must agree in person and number
        const matchingSubject = subjectPrefixes.find((subject) =>
          subject.details.person === reflexive.details.person &&
                    subject.details.number === reflexive.details.number,
        );
        if (!matchingSubject) {
          return false;
        }
      } else {
        // If no explicit subject, reflexive implies 3rd person singular
        if (reflexive.details.person !== 'third' || reflexive.details.number !== 'singular') {
          return false;
        }
      }
    }
    return true;
  }

  /**
     * Checks if any of the suffixes are nominalizing
     */
  #hasNominalizingSuffix(suffixes) {
    return suffixes.some((suffix) =>
      suffix.nominalizing ||
            nominalizingSuffixMorphemes.has(suffix.morpheme),
    );
  }
}