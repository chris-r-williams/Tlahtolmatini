# Tlahtolmatini

Tlahtolmatini is a computational morphological analyser for Nahuatl. The tool decomposes lexical items into their constituent morphemes, assigns grammatical categories and features to each morpheme, and generates morpheme-level English glosses.

For an interactive demonstration, see: https://www.chrishobbyprojects.com/nahuatl/

## Abstract

This repository implements rule-based morphological parsing for Nahuatl. It performs orthographic normalization, lexicon lookup, and finite-state–like morpheme segmentation with a set of heuristic validators for morphotactic well-formedness. Output is designed to be linguistically transparent: it exposes alternative parses when morpheme boundaries or function assignments are ambiguous and provides English glosses.

## Design goals and scope

- Linguistic transparency: preserve morphological structure and expose analytic choices rather than collapsing meanings into idiomatic glosses.
- Reproducibility: deterministic parsing given the same input and configuration.
- Dual-orthography support: handle both the classical Andrews–Campbell–Karttunen (ACK) orthography, and the modern orthography recommended by the Instituto Nacional de Lenguas Indígenas (INALI), with utilities to convert between them.
  - ACK was chosen for classical orthography due to widespread usage
  - INALI was chosen for modern orthography due to its official recommendation by INALI, its use in Yan Garcia's *Learn Nahuatl*, and personal preference.

## Methodology

1. Orthographic normalization: the input token may be normalised to an orthography used internally by the analyzer.
    1. The internal orthography can be described as ACK without vowel length.
2. Lexical lookup: candidate stems and affixes are matched against the internal lexicon.
3. Segmentation and parsing: the parser attempts to assign morpheme boundaries and grammatical functions using a backtracking parser with validator modules for prefixes, stems, and suffixes.
4. Output generation: for each successful parse the system emits a morpheme sequence with morphosyntactic tags and an English morpheme-by-morpheme gloss.

Where the input permits multiple valid analyses, all are returned.

## Testing

* The goal is to include comprehensive test cases for both orthography conversion and morphological analysis, to ensure correctness and to prevent regressions.

* Many current test cases are derived from textbook examples, representing both classical and modern Nahuatl, that have been normalized to the internal orthography of this project, including:
  * *An Introduction to Classical Nahuatl* by Launey/Mackay
    * The saltillo, represented by Launey using the grave accent and circumflex, has been normalized to *h*, as in ACK
    * Preconsonantal and word-final *uc* has been normalized to *cuh*, e.g. *neuctli* -> *necuhtli*, as in ACK
  * *Learn Nahuatl* (2nd ed.) by Yan Garcia
    * The INALI orthography used by Garcia is supported for input/output, but test cases use ACK (in order to decouple analysis bugs from orthography conversion bugs)

## Limitations and known omissions

- The system is not a lexical dictionary: glosses are morphological and compositional rather than idiomatic.
- Certain morphophonological processes are only partially modelled (e.g. limited treatment of elision).
- Reduplication and some productive word‑formation processes are not yet implemented.
- Vowel length is ignored in input and absent from output, for best compatibility with existing texts.

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