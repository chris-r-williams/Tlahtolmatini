export class TranslationFinalizer {
  constructor(articleHelper) {
    this.articleHelper = articleHelper;
  }

  /**
   * Finalizes the translation by adding subjects, wrappers, and proper articles
   * @param {object} analysis The morpheme analysis
   * @param {object} coreResult The core string building result
   * @returns {string} The final translation
   */
  finalizeTranslation(analysis, coreResult) {
    const { coreEnglishString, requiresWrapper } = coreResult;

    if (!analysis.subjectPrefixDetails && !analysis.imperativePrefixDetails) {
      return this._handleImplicitSubject(analysis, coreEnglishString, requiresWrapper);
    } else if (analysis.subjectPrefixDetails) {
      return this._handleExplicitSubject(analysis, coreEnglishString, requiresWrapper);
    } else {
      return coreEnglishString;
    }
  }

  _handleImplicitSubject(analysis, coreEnglishString, requiresWrapper) {
    if (requiresWrapper) {
      let implicitPronoun = 'it';
      let copula = 'is';

      if (analysis.hasPluralSuffix) {
        copula = 'are';
        implicitPronoun = 'they';
      }

      const shouldAddArticle = this._shouldAddArticle(analysis);

      if (!analysis.mainVerbStemDetails || analysis.isLliParticiple ||
          analysis.isNominalizedByOtherSuffix || analysis.possessivePrefixDetails ||
          analysis.isRightmostStemNominalizedVerb) {

        let articleString = '';
        if (shouldAddArticle) {
          const firstWord = coreEnglishString.trim().split(' ')[0];
          articleString = ' ' + this.articleHelper.getArticle(firstWord);
        }
        return `(${implicitPronoun} ${copula}${articleString}) ${coreEnglishString}`;
      }
    } else if (analysis.mainVerbStemDetails) {
      let implicitSubject = 'he/she/it';
      if (analysis.hasPluralSuffix) {
        implicitSubject = 'they';
      }
      return `${implicitSubject} ${coreEnglishString}`;
    } else {
      return coreEnglishString;
    }
  }

  _handleExplicitSubject(analysis, coreEnglishString) {
    const subjectString = analysis.subjectPrefixDetails.english;
    const hasNounStemBeforeVerb = analysis.allNounStemsDetails.length > 0 && analysis.mainVerbStemDetails;

    if (analysis.mainVerbStemDetails && !analysis.isLliParticiple && !analysis.isNominalizedByOtherSuffix) {
      return `${subjectString} ${coreEnglishString}`;
    } else if (analysis.allNounStemsDetails.length > 0 || analysis.isLliParticiple || analysis.isNominalizedByOtherSuffix) {
      const copulaVerb = this._getCopulaVerb(analysis.subjectPrefixDetails);
      const shouldAddArticle = this._shouldAddArticle(analysis, hasNounStemBeforeVerb);

      if (hasNounStemBeforeVerb) {
        return `${subjectString} ${coreEnglishString}`;
      } else {
        let articleString = '';
        if (shouldAddArticle) {
          const firstWord = coreEnglishString.trim().split(' ')[0];
          articleString = ' ' + this.articleHelper.getArticle(firstWord);
        }
        return `${subjectString} ${copulaVerb}${articleString} ${coreEnglishString}`;
      }
    } else {
      return `${subjectString} ${coreEnglishString}`;
    }
  }

  _shouldAddArticle(analysis, hasNounStemBeforeVerb = false) {
    let shouldAddArticle = false;

    if (analysis.primaryNounStemDetails && analysis.primaryNounStemDetails.countable === true &&
        !analysis.hasPluralSuffix && !hasNounStemBeforeVerb) {
      shouldAddArticle = true;
    } else if (analysis.isNominalizedByOtherSuffix && analysis.otherNominalizingSuffixDetails &&
               analysis.otherNominalizingSuffixDetails.countable === true && !analysis.hasPluralSuffix) {
      shouldAddArticle = true;
    }

    // Override if object prefix or possessive
    if (analysis.tlaObjectPresent || analysis.teObjectPresent || analysis.possessivePrefixDetails) {
      shouldAddArticle = false;
    }

    // Override for participles
    if (analysis.isLliParticiple) {
      shouldAddArticle = false;
    }

    return shouldAddArticle;
  }

  _getCopulaVerb(subjectPrefixDetails) {
    if (subjectPrefixDetails.english === 'I') {
      return 'am';
    } else if (subjectPrefixDetails.english === 'you (sg)') {
      return 'are';
    } else if (subjectPrefixDetails.english === 'we') {
      return 'are';
    } else if (subjectPrefixDetails.english === 'you (pl)') {
      return 'are';
    } else if (subjectPrefixDetails.english === 'he/she/it' && subjectPrefixDetails.plural) {
      return 'are';
    } else if (subjectPrefixDetails.english === 'he/she/it') {
      return 'is';
    }
    return 'is'; // fallback
  }
}