# Tlahtolmatini

Tlahtolmatini is a computational morphological analyser for Nahuatl. The tool decomposes lexical items into their constituent morphemes, assigns grammatical categories and features to each morpheme, and generates morpheme-level English glosses.

For an interactive demonstration, see: https://www.chrishobbyprojects.com/nahuatl/

## Abstract

This repository implements rule-based morphological parsing for Nahuatl. It performs orthographic normalization, lexicon lookup, and finite-state–like morpheme segmentation with a set of heuristic validators for morphotactic well-formedness. Output is designed to be linguistically transparent: it exposes alternative parses when morpheme boundaries or function assignments are ambiguous and provides English glosses.

## Design goals and scope

- Linguistic transparency: preserve morphological structure and expose analytic choices rather than collapsing meanings into idiomatic glosses.
- Reproducibility: deterministic parsing given the same input and configuration.
- Dual-orthography support: handle both the classical Andrews–Campbell–Karttunen and modern INALI orthographies, with utilities to convert between them.

## Methodology

1. Orthographic normalization: the input token may be normalised to an orthography used internally by the analyzer.
2. Lexical lookup: candidate stems and affixes are matched against the internal lexicon.
3. Segmentation and parsing: the parser attempts to assign morpheme boundaries and grammatical functions using a backtracking parser with validator modules for prefixes, stems, and suffixes.
4. Output generation: for each successful parse the system emits a morpheme sequence with morphosyntactic tags and an English morpheme-by-morpheme gloss.

Where the input permits multiple valid analyses, all are returned so the analyst can adjudicate using external contextual information.

## Limitations and known omissions

- The system is not a lexical dictionary: glosses are morphological and compositional rather than idiomatic.
- Certain morphophonological processes are only partially modelled (e.g. limited treatment of elision).
- Reduplication and some productive word‑formation processes are not yet implemented.

## Installation and build

```bash
npm install
npm run build
```

## Usage

```javascript
const parser = new Tlahtolmatini.NahuatlParser();

// Analyze a token in classical orthography
const result = parser.analyze('nimitzitta');
console.log(result);
/* Output:
{
  success: true,
  parsings: [{
    morphemes: [
      { morpheme: 'ni', details: { type: 'prefix', role: 'subject', person: 'first', number: 'singular' } },
      { morpheme: 'mitz', details: { type: 'prefix', role: 'object', person: 'second', english: 'you (sg)' } },
      { morpheme: 'itta', details: { type: 'verb_stem', english: 'see', past: 'saw', pp: 'seen' } }
    ],
    englishTranslation: "I see you (sg)"
  }]
}
*/

// Analyze in modern orthography
const modernResult = parser.analyze('nitlakwa', 'modern');

// Orthography conversion helpers
const toModern = Tlahtolmatini.classicalToModern('cuauhtemoc');  // Output: 'kwawtemok'
const toClassical = Tlahtolmatini.modernToClassical('nikchiwa');  // Output: 'nicchihua'
```

## License

This project is released under the MIT License. See the `LICENSE` file for details.