import { nahuatlLexicon } from './lexicon.js';

// --- Known Ambiguous Words ---
export const knownAmbiguousWords = [
  {
    // This word is on page 11 of the second edition of Garcia's Learn Nahuatl.
    // He says it means "my lord," so teco is presumably from tekohtli
    // which is in the book's dictionary as "boss; owner," but I am not
    // sure why he would not spell it "noteko" using the modern orthography
    // from the dictionary and the rest of the book. Teco is presumably an
    // irregular possessive stem, because it's missing the h, and I have not
    // yet implemented irregular stem forms. So it's going here so that it
    // will parse.
    word: 'noteco',
    parse: [
      [
        { morpheme: 'no', details: nahuatlLexicon.find((m) => m.morpheme === 'no' && m.type === 'prefix') },
        { morpheme: 'teco', details: nahuatlLexicon.find((m) => m.morpheme === 'tecoh' && m.type === 'noun_stem') },
      ],
    ],
  },
  {
    word: 'nocniuh',
    parse: [
      [
        { morpheme: 'no', details: nahuatlLexicon.find((m) => m.morpheme === 'no' && m.type === 'prefix') },
        { morpheme: 'cniuh', details: nahuatlLexicon.find((m) => m.morpheme === 'icniuh' && m.type === 'noun_stem') },
      ],
    ],
  },
];
