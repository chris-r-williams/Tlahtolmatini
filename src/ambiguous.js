import { nahuatlLexicon } from './lexicon.js';

// --- Known Ambiguous Words ---
export const knownAmbiguousWords = [
    {
        word: "imeuh",
        parse: [
            [
                { morpheme: "i", details: nahuatlLexicon.find(m => m.morpheme === "i" && m.type === "prefix") },
                { morpheme: "me", details: nahuatlLexicon.find(m => m.morpheme === "me" && m.type === "noun_stem") },
                { morpheme: "uh", details: nahuatlLexicon.find(m => m.morpheme === "uh" && m.type === "suffix") }
            ],
            [
                { morpheme: "im", details: nahuatlLexicon.find(m => m.morpheme === "im" && m.type === "prefix") },
                { morpheme: "e", details: nahuatlLexicon.find(m => m.morpheme === "e" && m.type === "noun_stem") },
                { morpheme: "uh", details: nahuatlLexicon.find(m => m.morpheme === "uh" && m.type === "suffix") }
            ],
        ],
    },
];
