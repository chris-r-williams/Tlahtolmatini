import { ArticleHelper } from './ArticleHelper.js';
import { MorphemeAnalyzer } from './MorphemeAnalyzer.js';
import { CoreStringBuilder } from './CoreStringBuilder.js';
import { TranslationFinalizer } from './TranslationFinalizer.js';

export class NahuatlTranslator {
  constructor(sortedNahuatlLexicon) {
    this.lexicon = sortedNahuatlLexicon;
    this.allStems = this.lexicon.filter((m) => m.type === 'verb_stem' || m.type === 'noun_stem');
    this.articleHelper = new ArticleHelper();
    this.morphemeAnalyzer = new MorphemeAnalyzer();
    this.coreStringBuilder = new CoreStringBuilder(this.articleHelper);
    this.translationFinalizer = new TranslationFinalizer(this.articleHelper);
  }

  /**
   * Generates English translations from an array of parsed Nahuatl morpheme sets.
   * @param {Array<Array<object>>} parsingsArray An array of parsings, each containing morphemes.
   * @returns {Array<string>} An array of English translations.
   */
  generateEnglishTranslations(parsingsArray) {
    return parsingsArray.map((parsing) => this.generateEnglishTranslation(parsing));
  }

  /**
   * Generates an English translation from a list of parsed Nahuatl morphemes.
   * @param {Array<object>} parsedMorphemes An array of objects, each containing {morpheme: string, details: object}.
   * @returns {string} The English translation.
   */
  generateEnglishTranslation(parsedMorphemes) {
    // Analyze morphemes to extract components
    const analysis = this.morphemeAnalyzer.analyzeMorphemes(parsedMorphemes);

    // Build the core English string based on morpheme types
    const coreResult = this.coreStringBuilder.buildCoreString(analysis);

    // Finalize the translation with subjects, wrappers, and articles
    const finalTranslation = this.translationFinalizer.finalizeTranslation(analysis, coreResult);

    // Robust return to ensure a string is always returned
    return String(finalTranslation || '').trim()
      .replace(/\s+/g, ' ');
  }
}
