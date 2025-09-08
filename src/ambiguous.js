import { nahuatlLexicon } from './lexicon.js';

// --- Known Ambiguous Words ---
export const knownAmbiguousWords = [
  // For now, atl is going in ambiguous words, because when I put "a" as a noun
  // stem into the lexicon, there are a ton of "a"s that are potential matches
  // and it results in some strange parsings. In order for it to work correctly
  // as a lexicon entry, the parser algortihm will need to be locked down tight
  // which it currently isn't.
  {
    word: 'atl',
    parse: [
      [
        { morpheme: 'a', details: { morpheme: 'a', type: 'noun_stem', english: 'water', countable: false, animate: false }},
        { morpheme: 'tl', details: nahuatlLexicon.find((m) => m.morpheme === 'tl' && m.type === 'suffix') },
      ],
    ],
  },
  {
    word: 'noauh',
    parse: [
      [
        { morpheme: 'no', details: nahuatlLexicon.find((m) => m.morpheme === 'no' && m.type === 'prefix') },
        { morpheme: 'a', details: { morpheme: 'a', type: 'noun_stem', english: 'water', countable: false, animate: false }},
        { morpheme: 'uh', details: nahuatlLexicon.find((m) => m.morpheme === 'uh' && m.type === 'suffix') },
      ],
    ],
  },
  {
    word: 'altepetl',
    parse: [
      [
        { morpheme: 'al', details: { morpheme: 'a', type: 'noun_stem', english: 'water', countable: false, animate: false }},
        { morpheme: 'tepe', details: nahuatlLexicon.find((m) => m.morpheme === 'tepe' && m.type === 'noun_stem') },
        { morpheme: 'tl', details: nahuatlLexicon.find((m) => m.morpheme === 'tl' && m.type === 'suffix') },
      ],
    ],
  },
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
  {
    word: 'nahui',
    parse: [
      [
        { morpheme: 'n', details: nahuatlLexicon.find((m) => m.morpheme === 'n' && m.type === 'prefix') },
        { morpheme: 'ahui', details: nahuatlLexicon.find((m) => m.morpheme === 'ahui' && m.type === 'noun_stem') },
      ],
      [
        { morpheme: 'nahui', details: nahuatlLexicon.find((m) => m.morpheme === 'nahui' && m.type === 'numeral') },
      ],
    ],
  },
];
