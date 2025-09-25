/**
 * Irregular verb forms that don't follow standard morphological patterns
 */
export const irregularVerbs = {
  cah: {
    forms: [
      {
        form: 'nicah',
        translation: 'I am (located)',
        analysis: [
          { morpheme: 'ni', details: { type: 'prefix', role: 'subject', person: 'first', number: 'singular' } },
          { morpheme: 'cah', details: { type: 'irregular_verb', english: 'be' } },
        ],
      },
      {
        form: 'ticah',
        translation: 'you (sg) are (located)',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'second', number: 'singular' } },
          { morpheme: 'cah', details: { type: 'irregular_verb', english: 'be' } },
        ],
      },
      {
        form: 'cah',
        translation: 'he/she/it is (located)',
        analysis: [
          { morpheme: 'cah', details: { type: 'irregular_verb', english: 'be' } },
        ],
      },
      {
        form: 'ticateh',
        translation: 'we are (located)',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'first', number: 'plural' } },
          { morpheme: 'ca', details: { type: 'irregular_verb', english: 'be' } },
          { morpheme: 'teh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
      {
        form: 'ancateh',
        translation: 'you (pl) are (located)',
        analysis: [
          { morpheme: 'an', details: { type: 'prefix', role: 'subject', person: 'second', number: 'plural' } },
          { morpheme: 'ca', details: { type: 'irregular_verb', english: 'be' } },
          { morpheme: 'teh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
      {
        form: 'cateh',
        translation: 'they are (located)',
        analysis: [
          { morpheme: 'ca', details: { type: 'irregular_verb', english: 'be' } },
          { morpheme: 'teh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
    ],
  },
  yauh: {
    forms: [
      {
        form: 'niyauh',
        translation: 'I go',
        analysis: [
          { morpheme: 'ni', details: { type: 'prefix', role: 'subject', person: 'first', number: 'singular' } },
          { morpheme: 'yauh', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'tiyauh',
        translation: 'you (sg) go',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'second', number: 'singular' } },
          { morpheme: 'yauh', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'tiyaz',
        translation: 'you (sg) go',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'second', number: 'singular' } },
          { morpheme: 'yaz', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'yauh',
        translation: 'he/she/it goes',
        analysis: [
          { morpheme: 'yauh', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'tihuih',
        translation: 'we go',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'first', number: 'plural' } },
          { morpheme: 'huih', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'anhuih',
        translation: 'you (pl) go',
        analysis: [
          { morpheme: 'an', details: { type: 'prefix', role: 'subject', person: 'second', number: 'plural' } },
          { morpheme: 'huih', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
      {
        form: 'huih',
        translation: 'they go',
        analysis: [
          { morpheme: 'huih', details: { type: 'irregular_verb', english: 'go' } },
        ],
      },
    ],
  },
  huitz: {
    forms: [
      {
        form: 'nihuitz',
        translation: 'I come',
        analysis: [
          { morpheme: 'ni', details: { type: 'prefix', role: 'subject', person: 'first', number: 'singular' } },
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
        ],
      },
      {
        form: 'tihuitz',
        translation: 'you (sg) come',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'second', number: 'singular' } },
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
        ],
      },
      {
        form: 'huitz',
        translation: 'he/she/it comes',
        analysis: [
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
        ],
      },
      {
        form: 'tihuitzeh',
        translation: 'we come',
        analysis: [
          { morpheme: 'ti', details: { type: 'prefix', role: 'subject', person: 'first', number: 'plural' } },
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
          { morpheme: 'eh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
      {
        form: 'anhuitzeh',
        translation: 'you (pl) come',
        analysis: [
          { morpheme: 'an', details: { type: 'prefix', role: 'subject', person: 'second', number: 'plural' } },
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
          { morpheme: 'eh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
      {
        form: 'huitzeh',
        translation: 'they come',
        analysis: [
          { morpheme: 'huitz', details: { type: 'irregular_verb', english: 'come' } },
          { morpheme: 'eh', details: { type: 'suffix', category: 'plural' } },
        ],
      },
    ],
  },
};

/**
 * Check if a word is an irregular verb form and return its analysis if it is
 * @param {string} word - The word to check
 * @returns {Object|null} The irregular verb analysis or null if not found
 */
export function checkIrregularVerbs(word) {
  for (const verb of Object.values(irregularVerbs)) {
    const match = verb.forms.find((f) => f.form === word);
    if (match) {
      return {
        success: true,
        parsings: [{
          morphemes: match.analysis,
          englishTranslation: match.translation,
        }],
      };
    }
  }
  return null;
}