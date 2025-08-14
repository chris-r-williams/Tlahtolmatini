import { nominalizingSuffixMorphemes, pluralSuffixMorphemes } from '../helper.js';

/**
 * Handles validation of prefix combinations and ambiguous prefixes
 */
export class PrefixValidator {
  /**
     * Validates the order of prefixes in a word
     * @param {Object} prefix - The prefix to validate
     * @param {Object} state - Current parsing state
     * @returns {boolean} Whether the prefix order is valid
     */
  isValidPrefixOrder(prefix, state) {
    const existingRoles = state.prefixes.map((p) => p.role);

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
  isAmbiguousPrefix(morpheme) {
    return ['ti', 't', 'no', 'mo', 'to', 'm', 'n'].includes(morpheme);
  }

  /**
     * Validates an ambiguous prefix based on context and grammar rules
     * @param {Object} prefix - The ambiguous prefix to validate
     * @param {Object} state - Current parsing state
     * @param {Array} suffixes - Array of identified suffixes
     * @returns {boolean} Whether the ambiguous prefix is valid in this context
     */
  isValidAmbiguousPrefix(prefix, state, suffixes) {
    switch (prefix.morpheme) {
    case 'ti':
    case 't':
      if (prefix.role === 'subject') {
        return this.#isValidTiPrefix(prefix, suffixes) &&
                           this.isValidPrefixOrder(prefix, state);
      } else if (prefix.role === 'possessive' || prefix.role === 'reflexive') {
        return this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
      }
      return false;

    case 'no':
    case 'mo':
    case 'to':
    case 'm':
    case 'n':
      if (prefix.morpheme === 't' || prefix.morpheme === 'n') {
        return this.#isValidTOrNPrefix(prefix, state, suffixes);
      }

      if (prefix.role === 'possessive' || prefix.role === 'reflexive') {
        return this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
      } else if (prefix.role === 'subject' || prefix.role === 'object') {
        return this.isValidPrefixOrder(prefix, state);
      }
      return false;

    default:
      return true;
    }
  }

  /**
     * Validates 't' or 'n' prefixes which can be either subject or possessive
     */
  #isValidTOrNPrefix(prefix, state, suffixes) {
    const hasAbsolutiveSuffix = suffixes.some((s) =>
      s.category === 'absolutive' ||
            ['li', 'tli', 'tl', 'tzintli'].includes(s.morpheme),
    );

    const hasHuanSuffix = suffixes.some((s) => s.morpheme === 'huan');
    const primaryStem = this.#getPrimaryStem(state.stems);
    const hasPrimaryNounStem = primaryStem?.type === 'noun_stem';
    const hasPrimaryVerbStem = primaryStem?.type === 'verb_stem';
    const hasIrregularNoun = primaryStem?.type === 'noun_stem' && primaryStem.absolutiveSuffix === false;

    if (prefix.role === 'subject') {
      const validForNoun = ((hasAbsolutiveSuffix && hasPrimaryNounStem) ||
                                (hasIrregularNoun && !hasAbsolutiveSuffix));
      const validForVerb = hasPrimaryVerbStem;

      return (validForNoun || validForVerb) && this.isValidPrefixOrder(prefix, state);
    }
    else if (prefix.role === 'possessive') {
      const isValidPossessive = hasPrimaryNounStem && (
        hasHuanSuffix ||
                (!hasAbsolutiveSuffix && !hasIrregularNoun) ||
                (hasIrregularNoun && !hasAbsolutiveSuffix)
      );

      return isValidPossessive &&
                   this.#isValidPossessiveReflexivePrefix(prefix, state, suffixes);
    }

    return false;
  }

  /**
     * Validates possessive and reflexive prefix usage
     */
  #isValidPossessiveReflexivePrefix(prefix, state, suffixes) {
    if (prefix.role !== 'possessive' && prefix.role !== 'reflexive') {
      return false;
    }

    const hasSubjectPrefix = state.prefixes.some((p) => p.role === 'subject');
    const hasObjectPrefix = state.prefixes.some((p) => p.role === 'object');
    const hasExistingPossessive = state.prefixes.some((p) => p.role === 'possessive');
    const hasExistingReflexive = state.prefixes.some((p) => p.role === 'reflexive');

    if ((prefix.role === 'possessive' && hasExistingPossessive) ||
            (prefix.role === 'reflexive' && hasExistingReflexive)) {
      return false;
    }

    if (hasObjectPrefix && prefix.role === 'reflexive') {
      return false;
    }

    if (hasSubjectPrefix && prefix.role === 'possessive') {
      return false;
    }

    const primaryStem = this.#getPrimaryStem(state.stems);
    const hasPrimaryNounStem = primaryStem?.type === 'noun_stem';
    const hasPrimaryVerbStem = primaryStem?.type === 'verb_stem';
    const hasNominalizingSuffix = this.#hasNominalizingSuffix(suffixes);

    if (prefix.usedWith) {
      if (prefix.usedWith === 'noun' && !hasPrimaryNounStem && !hasNominalizingSuffix) {
        return false;
      }
      if (prefix.usedWith === 'verb' && (!hasPrimaryVerbStem || hasNominalizingSuffix)) {
        return false;
      }
    }

    if (hasPrimaryNounStem || hasNominalizingSuffix) {
      return prefix.role === 'possessive';
    }

    if (hasPrimaryVerbStem && !hasNominalizingSuffix) {
      if (prefix.role !== 'reflexive') {
        return false;
      }

      const subjectPrefixes = state.prefixes.filter((p) => p.role === 'subject');

      if (subjectPrefixes.length > 0) {
        const subjectPrefix = subjectPrefixes[0];
        return prefix.person === subjectPrefix.person &&
                       prefix.number === subjectPrefix.number;
      } else {
        return prefix.person === 'third' && prefix.number === 'singular';
      }
    }

    return true;
  }

  /**
     * Validates 'ti' prefix interpretation based on suffix context
     */
  #isValidTiPrefix(tiPrefix, suffixes) {
    const hasPluralSuffix = suffixes.some((s) => pluralSuffixMorphemes.has(s.morpheme));
    const hasSingularSuffix = suffixes.some((s) => nominalizingSuffixMorphemes.has(s.morpheme));

    if (hasPluralSuffix) {
      return tiPrefix.person === 'first' && tiPrefix.number === 'plural';
    }

    if (hasSingularSuffix) {
      return tiPrefix.person === 'second' && tiPrefix.number === 'singular';
    }

    return (tiPrefix.person === 'first' && tiPrefix.number === 'plural') ||
               (tiPrefix.person === 'second' && tiPrefix.number === 'singular');
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

  /**
     * Gets the primary (rightmost) stem from a list of stems
     * @param {Array} stems - Array of stems
     * @returns {Object|null} The primary stem or null if no stems
     */
  #getPrimaryStem(stems) {
    if (!stems || stems.length === 0) {return null;}
    return stems[stems.length - 1];
  }
}