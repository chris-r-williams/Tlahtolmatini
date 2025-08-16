export class ArticleHelper {
  /**
   * Helper function to determine if a word starts with a vowel
   * @param {string} word The word to check
   * @returns {boolean} True if the word starts with a vowel
   */
  startsWithVowel(word) {
    return /^[aeiouAEIOU]/.test(word.trim());
  }

  /**
   * Helper function to get the appropriate article (a/an) for a word
   * @param {string} nextWord The word that will follow the article
   * @returns {string} Either "a" or "an"
   */
  getArticle(nextWord) {
    return this.startsWithVowel(nextWord) ? 'an' : 'a';
  }
}