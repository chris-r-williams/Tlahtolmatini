export class CoreStringBuilder {
  constructor(articleHelper) {
    this.articleHelper = articleHelper;
  }

  /**
   * Builds the core English string based on morpheme analysis
   * @param {object} analysis The morpheme analysis
   * @returns {object} Object containing coreEnglishString and requiresWrapper
   */
  buildCoreString(analysis) {
    let coreEnglishString = '';
    let requiresWrapper = false;

    // Handle negation prefix
    if (analysis.negationPrefixDetails) {
      coreEnglishString += 'not ';
    }

    // Handle imperative prefix
    if (analysis.imperativePrefixDetails) {
      coreEnglishString += analysis.imperativePrefixDetails.english + ' ';
      requiresWrapper = false;
    }

    // Handle -tic adjective suffix first
    if (analysis.isTicAdjective) {
      const result = this._buildTicAdjective(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
    } else if (analysis.isLliParticiple) {
      const result = this._buildLliParticiple(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
      // Clear possessive since we handled it
      analysis.possessivePrefixDetails = null;
    } else if (analysis.isRightmostStemNominalizedVerb &&
               analysis.otherNominalizingSuffixDetails &&
               analysis.otherNominalizingSuffixDetails.morpheme === 'ni') {
      const result = this._buildNiAgentNoun(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
    } else if (analysis.mainVerbStemDetails && !analysis.isNominalizedByOtherSuffix) {
      const result = this._buildVerbString(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
    } else if (analysis.allNounStemsDetails.length > 0) {
      const result = this._buildNounString(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
    } else if (analysis.isRightmostStemNominalizedVerb && analysis.otherNominalizingSuffixDetails) {
      const result = this._buildOtherNominalized(analysis);
      coreEnglishString += result.string;
      requiresWrapper = result.requiresWrapper;
    } else {
      // Fallback
      coreEnglishString += analysis.parsedMorphemes.map((m) => m.details.english || m.morpheme).join(' ');
      if (analysis.parsedMorphemes.some((m) => m.details.type === 'noun_stem')) {
        requiresWrapper = true;
      }
    }

    // Handle object prefixes (skip for -tic adjectives)
    if (analysis.objectPrefixDetails && !analysis.isTicAdjective) {
      coreEnglishString += ' ' + analysis.objectPrefixDetails.english;
    }

    // Handle possessive prefix (if not already handled)
    if (analysis.possessivePrefixDetails && !analysis.isTicAdjective) {
      if (coreEnglishString) {
        coreEnglishString = analysis.possessivePrefixDetails.english + ' ' + coreEnglishString;
      } else {
        coreEnglishString = analysis.possessivePrefixDetails.english;
      }
      requiresWrapper = true;
    }

    // Handle reflexive prefixes (skip for -tic adjectives)
    if (analysis.reflexivePrefixDetails && !analysis.isTicAdjective) {
      coreEnglishString += ' ' + analysis.reflexivePrefixDetails.english;
    }

    return { coreEnglishString, requiresWrapper };
  }

  // Method to build -tic adjectives
  _buildTicAdjective(analysis) {
    let string = '';

    if (analysis.allNounStemsDetails.length > 0) {
      // Use the noun stem(s) with -like suffix
      const nounParts = analysis.allNounStemsDetails.map((details) => details.english);
      string = nounParts.join('-') + '-like';
    } else if (analysis.mainVerbStemDetails) {
      // If somehow there's a verb stem, use it with -like
      string = analysis.mainVerbStemDetails.english + '-like';
    } else {
      // Fallback to any available morpheme
      const availableMorphemes = analysis.parsedMorphemes.filter((m) =>
        m.morpheme !== 'tic' && m.details.english,
      );
      if (availableMorphemes.length > 0) {
        string = availableMorphemes.map((m) => m.details.english).join('-') + '-like';
      } else {
        string = 'like';
      }
    }

    // Handle possessive prefix for -tic adjectives
    if (analysis.possessivePrefixDetails) {
      string = analysis.possessivePrefixDetails.english + ' ' + string;
    }

    return { string, requiresWrapper: true };
  }

  _buildLliParticiple(analysis) {
    const getPastParticiple = (verbStem) => {
      if (verbStem.pp) {
        return verbStem.pp;
      }
      const english = verbStem.english;
      return english.endsWith('e') ? english + 'd' : english + 'ed';
    };

    let string = '';
    if (analysis.mainVerbStemDetails) {
      const pastParticiple = getPastParticiple(analysis.mainVerbStemDetails);
      if (analysis.tlaObjectPresent) {
        if (analysis.possessivePrefixDetails) {
          string = `${analysis.possessivePrefixDetails.english} something ${pastParticiple}`;
        } else {
          string = `something ${pastParticiple}`;
        }
      } else {
        if (analysis.possessivePrefixDetails) {
          string = `${analysis.possessivePrefixDetails.english} ${pastParticiple}`;
        } else {
          string = pastParticiple;
        }
      }
    } else {
      if (analysis.possessivePrefixDetails) {
        string = analysis.tlaObjectPresent ?
          `${analysis.possessivePrefixDetails.english} something` :
          analysis.possessivePrefixDetails.english;
      } else {
        string = analysis.tlaObjectPresent ? 'something' : '';
      }
    }

    return { string, requiresWrapper: true };
  }

  _buildNiAgentNoun(analysis) {
    const one = 1;
    const two = 2;

    const getAgentForm = (verbStem) => {
      if (verbStem.agent) {
        return verbStem.agent;
      }
      const english = verbStem.english;
      return english.endsWith('e') ? english + 'r' : english + 'er';
    };

    const getPluralForm = (word) => {
      if (word.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(word[word.length - two])) {
        return word.slice(0, -one) + 'ies';
      } else if (word.endsWith('s') || word.endsWith('sh') || word.endsWith('ch') ||
                 word.endsWith('x') || word.endsWith('z')) {
        return word + 'es';
      } else {
        return word + 's';
      }
    };

    let string = '';

    if (analysis.allNounStemsDetails.length > 0 && analysis.mainVerbStemDetails) {
      const agentForm = getAgentForm(analysis.mainVerbStemDetails);
      const nounParts = analysis.allNounStemsDetails.map((details) => details.english);

      const finalAgent = analysis.hasPluralSuffix ? getPluralForm(agentForm) : agentForm;
      string = nounParts.join('-') + '-' + finalAgent;
    } else if (analysis.mainVerbStemDetails) {
      let agentForm = getAgentForm(analysis.mainVerbStemDetails);
      if (analysis.hasPluralSuffix) {
        agentForm = getPluralForm(agentForm);
      }
      string = agentForm;
    }

    return { string, requiresWrapper: true };
  }

  _buildVerbString(analysis) {
    const one = 1;

    const getProgressiveForm = (verbStem) => {
      if (verbStem.progressive) {
        return verbStem.progressive;
      }
      const english = verbStem.english;
      return english.endsWith('e') ? english.slice(0, -one) + 'ing' : english + 'ing';
    };

    let verbString = analysis.mainVerbStemDetails.english;
    const hasNounStemBeforeVerb = analysis.allNounStemsDetails.length > 0 && analysis.mainVerbStemDetails;

    if (hasNounStemBeforeVerb) {
      const nounString = analysis.allNounStemsDetails[analysis.allNounStemsDetails.length - 1].english;

      if (analysis.isImperfectVerb) {
        verbString = getProgressiveForm(analysis.mainVerbStemDetails);
      }

      const isThirdPersonSingularSubject = (
        !analysis.subjectPrefixDetails ||
        (analysis.subjectPrefixDetails.english === 'he/she/it' && !analysis.subjectPrefixDetails.plural)
      ) && !analysis.hasPluralSuffix && !analysis.imperativePrefixDetails;

      if (isThirdPersonSingularSubject && !analysis.isImperfectVerb &&
          !analysis.isLliParticiple && !analysis.isNominalizedByOtherSuffix) {
        if (!verbString.endsWith('s') && verbString !== 'is' && verbString !== 'are') {
          verbString += 's';
        }
      }

      const article = this.articleHelper.getArticle(nounString);
      const string = `${verbString} like ${article} ${nounString}`;

      return { string, requiresWrapper: false };
    } else {
      if (analysis.isImperfectVerb) {
        verbString = getProgressiveForm(analysis.mainVerbStemDetails);
      }

      const isThirdPersonSingularSubject = (
        !analysis.subjectPrefixDetails ||
        (analysis.subjectPrefixDetails.english === 'he/she/it' && !analysis.subjectPrefixDetails.plural)
      ) && !analysis.hasPluralSuffix && !analysis.imperativePrefixDetails;

      if (isThirdPersonSingularSubject && !analysis.isImperfectVerb &&
          !analysis.isLliParticiple && !analysis.isNominalizedByOtherSuffix) {
        if (!verbString.endsWith('s') && verbString !== 'is' && verbString !== 'are') {
          verbString += 's';
        }
      }

      const string = verbString + (analysis.tlaObjectPresent ? ' something' : '');
      return { string, requiresWrapper: false };
    }
  }

  _buildNounString(analysis) {
    const one = 1;
    const two = 2;
    const getPluralForm = (nounDetails) => {
      if (nounDetails.englishPlural) {
        return nounDetails.englishPlural;
      }
      const english = nounDetails.english;
      if (english.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(english[english.length - two])) {
        return english.slice(0, -one) + 'ies';
      } else if (english.endsWith('s') || english.endsWith('sh') || english.endsWith('ch') ||
                 english.endsWith('x') || english.endsWith('z')) {
        return english + 'es';
      } else {
        return english + 's';
      }
    };

    let string = '';

    if (analysis.hasPluralSuffix && analysis.allNounStemsDetails.length === 1) {
      string = getPluralForm(analysis.primaryNounStemDetails);
    } else if (analysis.allNounStemsDetails.length > 1) {
      const compoundParts = analysis.allNounStemsDetails.map((details, index) => {
        if (analysis.hasPluralSuffix && index === analysis.allNounStemsDetails.length - 1) {
          return getPluralForm(details);
        }
        return details.english;
      });
      string = compoundParts.join('-');
    } else {
      string = analysis.primaryNounStemDetails.english;
    }

    return { string, requiresWrapper: true };
  }

  _buildOtherNominalized(analysis) {
    const one = 1;
    const two = 2;
    let nominalizedForm = (analysis.mainVerbStemDetails ? analysis.mainVerbStemDetails.english : '') +
                          analysis.otherNominalizingSuffixDetails.englishSuffix;

    if (analysis.hasPluralSuffix) {
      if (nominalizedForm.endsWith('y') && !['a', 'e', 'i', 'o', 'u'].includes(nominalizedForm[nominalizedForm.length - two])) {
        nominalizedForm = nominalizedForm.slice(0, -one) + 'ies';
      } else if (nominalizedForm.endsWith('s') || nominalizedForm.endsWith('sh') ||
                 nominalizedForm.endsWith('ch') || nominalizedForm.endsWith('x') ||
                 nominalizedForm.endsWith('z')) {
        nominalizedForm = nominalizedForm + 'es';
      } else {
        nominalizedForm = nominalizedForm + 's';
      }
    }

    return { string: nominalizedForm, requiresWrapper: true };
  }
}