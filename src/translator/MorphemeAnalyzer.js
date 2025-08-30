import { pluralSuffixMorphemes, nominalizingSuffixMorphemes } from '../helper.js';

export class MorphemeAnalyzer {
  /**
   * Analyzes parsed morphemes and extracts all relevant components
   * @param {Array<object>} parsedMorphemes
   * @returns {object} Analysis object containing all morpheme components
   */
  analyzeMorphemes(parsedMorphemes) {
    const analysis = {
      subjectPrefixDetails: null,
      objectPrefixDetails: null,
      possessivePrefixDetails: null,
      reflexivePrefixDetails: null,
      negationPrefixDetails: null,
      imperativePrefixDetails: null,
      mainVerbStemDetails: null,
      primaryNounStemDetails: null,
      allNounStemsDetails: [],
      isImperfectVerb: false,
      isLliParticiple: false,
      isNominalizedByOtherSuffix: false,
      isTicAdjective: false, // NEW: Handle -tic suffix
      otherNominalizingSuffixDetails: null,
      ticSuffixDetails: null, // NEW: Store -tic suffix details
      isRightmostStemNominalizedVerb: false,
      tlaObjectPresent: false,
      teObjectPresent: false,
      hasPluralSuffix: false,
      parsedMorphemes,
    };

    analysis.hasPluralSuffix = parsedMorphemes.some((m) =>
      m.details.type === 'suffix' && pluralSuffixMorphemes.has(m.morpheme),
    );

    // Analyze each morpheme
    for (const { morpheme, details } of parsedMorphemes) {
      if (details.type === 'prefix') {
        this._analyzePrefix(morpheme, details, analysis);
      } else if (details.type === 'verb_stem') {
        analysis.mainVerbStemDetails = details;
      } else if (details.type === 'noun_stem') {
        analysis.allNounStemsDetails.push(details);
        analysis.primaryNounStemDetails = details;
      } else if (details.type === 'suffix') {
        this._analyzeSuffix(morpheme, details, analysis);
      }
    }

    return analysis;
  }

  _analyzePrefix(morpheme, details, analysis) {
    if (details.role === 'subject') {
      analysis.subjectPrefixDetails = details;
    } else if (details.role === 'object' && morpheme !== 'tla' && morpheme !== 'te') {
      analysis.objectPrefixDetails = details;
    } else if (details.role === 'possessive') {
      analysis.possessivePrefixDetails = details;
    } else if (details.role === 'reflexive') {
      analysis.reflexivePrefixDetails = details;
    } else if (details.role === 'negation') {
      analysis.negationPrefixDetails = details;
    } else if (details.category === 'imperative') {
      analysis.imperativePrefixDetails = details;
    } else if (morpheme === 'tla' && details.role === 'object') {
      analysis.tlaObjectPresent = true;
    } else if (morpheme === 'te' && details.role === 'object') {
      analysis.teObjectPresent = true;
    }
  }

  _analyzeSuffix(morpheme, details, analysis) {
    if (details.category === 'imperfect') {
      analysis.isImperfectVerb = true;
    }

    // Handle -tic suffix
    if (morpheme === 'tic' && details.type === 'suffix') {
      analysis.isTicAdjective = true;
      analysis.ticSuffixDetails = details;
      return; // Don't process as nominalizing suffix
    }

    if (details.nominalizing) {
      if (morpheme === 'lli') {
        analysis.isLliParticiple = true;
      }

      if (morpheme === 'ni') {
        analysis.isNominalizedByOtherSuffix = true;
        analysis.otherNominalizingSuffixDetails = details;
        if (analysis.mainVerbStemDetails && analysis.mainVerbStemDetails.type === 'verb_stem') {
          analysis.isRightmostStemNominalizedVerb = true;
        }
      } else if (nominalizingSuffixMorphemes.has(morpheme) && details.category !== 'absolutive') {
        analysis.isNominalizedByOtherSuffix = true;
        analysis.otherNominalizingSuffixDetails = details;
        if (analysis.mainVerbStemDetails && analysis.mainVerbStemDetails.type === 'verb_stem') {
          analysis.isRightmostStemNominalizedVerb = true;
        }
      }
    }
  }
}