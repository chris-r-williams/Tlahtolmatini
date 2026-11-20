# Tlahtolmatini

**Tlahtolmatini** is a rule-based morphological analyzer for Nahuatl. It takes an
inflected word, identifies its morphemes, assigns grammatical categories and
features, and returns morpheme-level English glosses where the lexicon provides
them.

The analyzer is written in Prolog and runs in the browser or in Node.js through
[`swipl-wasm`](https://github.com/SWI-Prolog/npm-swipl-wasm), so no Prolog
installation or server is required.

- **Interactive demo:** <https://www.chrishobbyprojects.com/nahuatl/>
- **License:** MIT

## Overview

Tlahtolmatini is a word-level analyzer. Given a surface vocable it returns one
or more parses, each showing the segmentation, the morphosyntactic structure,
and a morpheme-by-morpheme gloss. It is intended for linguists, language
learners, corpus builders, and anyone who needs transparent morphological
analysis rather than a black-box stemmer.

The grammar follows J. Richard Andrews' *Introduction to Classical Nahuatl*.
The lexicon is drawn from Andrews, Frances Karttunen's *An Analytical
Dictionary of Nahuatl*, and the vocabulary of Yan Garcia's *Learn Nahuatl*.
Attested irregular and reduplicated stems are stored explicitly rather than
generated, which keeps analyses predictable and auditable.

## How it works

1. **Input preparation.** The word is matched as written (strict mode) or with
   free vowel length (lenient mode). Modern orthography can be converted to ACK
   first with `modernToClassical()`.
2. **Lexical lookup.** Prefixes, stems, and suffixes are matched against the
   Prolog lexicon.
3. **Morphotactic validation.** The grammar assembles verbal and nominal nuclear
   clauses (VNCs and NNCs), checking prefix order, stem class, transitivity,
   tense/aspect, and number.
4. **Output.** Every successful parse is returned as a Prolog term and converted
   into segments with roles, grammatical labels, and glosses. `analyze()` picks
   the highest-scoring analysis; `analyzeAll()` returns all of them.

The grammar and lexicon are ordinary Prolog facts and rules, executed by
SWI-Prolog compiled to WebAssembly. No finite-state compiler or external
service is involved.

## Features

- **Strict parsing** of macronized Classical Nahuatl (ACK orthography).
- **Lenient parsing** of unmacronized input: short vowels may be read as long,
  and every valid macronization that parses is returned.
- **Morpheme-level output** with categories, features, and English glosses.
- **All analyses exposed** when a word is ambiguous; a convenience API also
  selects the highest-scoring analysis.
- **ACK ↔ INALI conversion** utilities.
- **Noun, verb, and closed-class morphology**, including possession,
  absolutives, subject/object prefixes, directionals, tense/aspect, reflexive
  and nonactive formations, applicatives, causatives, and compounds.
- **Runs client-side** as a WebAssembly module; no network service needed after
  loading the parser and lexicon.
- **Deterministic** results for a fixed grammar, lexicon, and input.

## Requirements

- Node.js 18 or newer (for development and command-line use)
- npm
- A modern browser with WebAssembly support (for the included demo)

## Installation and build

```bash
git clone <repository-url>
cd tlahtolmatini
npm install
npm run build
```

The build writes the UMD bundle to:

```
dist/tlahtolmatini.v0.1.0.min.js
```

It exposes the global `Tlahtolmatini` and can also be imported as a module.

To run the included browser demo locally:

```bash
npm run serve
# open http://localhost:8000
```

## Quick start

### Node.js

```js
import {
    initProlog,
    analyze,
    analyzeAll,
    parse,
    macronize,
    classicalToModern,
    modernToClassical,
} from './src/index.js';

await initProlog('src/prolog/parser.pl', 'src/prolog/lexicon.pl');

const result = await analyze('calli');

console.log(result.ok);        // true
console.log(result.formatted); // nnc(pers_zero,predicate(cal),[li,''])
console.log(result.segments);
// [
//   { text: 'cal', role: 'noun',   title: 'Noun stem',          ... },
//   { text: 'li',  role: 'number', title: 'Absolutive singular', ... }
// ]
```

`initProlog` loads the grammar and the lexicon. If the second argument is
omitted, `lexicon.pl` is loaded from the same directory as the parser.

### Browser

```html
<script src="https://SWI-Prolog.github.io/npm-swipl-wasm/8/3/0/index.js"></script>
<script src="dist/tlahtolmatini.v0.1.0.min.js"></script>
<script>
    (async () => {
        const { initProlog, analyze } = Tlahtolmatini;

        await initProlog('src/prolog/parser.pl', 'src/prolog/lexicon.pl');

        const result = await analyze('calli');
        console.log(result.formatted);
    })();
</script>
```

## API

The analysis functions are asynchronous and require `initProlog()` to have
completed. The two orthography helpers are synchronous.

| Function | Description |
|---|---|
| `initProlog(parserPath, lexiconPath?)` | Load the grammar and lexicon into the WASM runtime. |
| `analyze(word)` | Return the highest-scoring parse for a word. |
| `analyzeAll(word, mode?)` | Return every distinct parse. `mode` is `"any"` (default, lenient) or `"these"` (strict, as written). |
| `parse(word)` | Return the best parse as a formatted Prolog string. |
| `macronize(word)` | Return every macronization of an unmacronized word that parses. |
| `classicalToModern(word)` | Convert ACK orthography to INALI-style modern orthography. |
| `modernToClassical(word)` | Convert modern orthography to ACK. |

### Result shape

`analyze()` returns:

```js
{
  ok: true,
  word: 'calli',
  score: 2,
  term: { /* Prolog term as a JS object */ },
  formatted: "nnc(pers_zero,predicate(cal),[li,''])",
  segments: [
    { text: 'cal', role: 'noun',   title: 'Noun stem',          description: '“house”' },
    { text: 'li',  role: 'number', title: 'Absolutive singular', description: 'The absolutive singular ending -li.' }
  ],
  displayNodes: [ /* grouped nodes used by the demo UI */ ],
  compoundKinds: []
}
```

`analyzeAll()` returns:

```js
{
  ok: true,
  word: 'tlahtolli',
  mode: 'any',
  results: [
    {
      macronized: 'tlahtōlli',
      term: { /* Prolog term as a JS object */ },
      formatted: "nnc(pers_zero,predicate(tlahtōl),[li,''])",
      segments: [ /* ... */ ],
      displayNodes: [ /* ... */ ],
      compoundKinds: [],
      score: 2
    }
  ]
}
```

Each segment carries a `role` (for example `subject`, `object`, `stem`,
`noun`, `tense`, `number`, or `suffix`), a human-readable `title`, and a
`description` with the gloss supplied by the lexicon.

## Strict and lenient parsing

**Strict mode** (`parse/2`, `analyzeAll(word, 'these')`) matches the word
exactly as written. Vowel length is significant, so `tlahtōlli` parses while
`tlahtolli` does not.

**Lenient mode** (`parse_lenient/3`, `analyzeAll(word)`) treats an unmarked
vowel as either short or long, while respecting macrons that are already
present. It returns every macronization that yields a parse, for example:

```js
await macronize('tlahtolli'); // ['tlahtōlli']
```

Because lenient mode searches the possible vowel-length assignments, its cost
grows with the number of unmarked vowels. Strict mode is the better choice for
macronized corpora.

## Orthography

The parser's lexical orthography is Classical Nahuatl in the
Andrews–Campbell–Karttunen (ACK) convention:

- long vowels are written with a macron: `ā ē ī ō ū`
- the saltillo is written `h`
- `cu`/`uc` are written as in ACK (`cuahuitl`, `necuhtli`)

Modern INALI-style spellings can be converted before analysis:

```js
classicalToModern('cuauhtemoc'); // 'kwawtemok'
modernToClassical('nikchiwa');   // 'nicchihua'
```

The conversions are orthographic only; they do not perform morphological
analysis.

## Grammar and lexicon

The Prolog sources are split by responsibility:

| File | Contents |
|---|---|
| `src/prolog/parser.pl` | Grammar, morphology, phonology, paradigms, and the parsing entry points. |
| `src/prolog/lexicon.pl` | Alphabetized lexical facts: nouns, verbs, closed-class words, particles, adjective stems, and lexicalized nonactive stems. |
| `src/prolog/test.pl` | Test suites. |

Verb entries are stored as principal parts (imperfective, perfective,
hypothetical), not as dictionary citation forms. Bare citation forms are
analyzed only when they coincide with a principal part.

### JavaScript layer

`src/index.js` adds:

- a gloss index built from the comments in the lexicon;
- morpheme grouping and display segmentation for the demo UI;
- scoring for choosing a preferred analysis;
- the public API described above.

`src/orthography.js` implements ACK ↔ INALI conversion.

## Testing

```bash
npm test
```

The test runner loads the grammar and lexicon and executes the suites in
`src/prolog/test.pl`:

- `andrews_grammar` — chapter-ordered tests for the grammar (particles, VNCs,
  NNCs, directionals, preterits, possession, nonactive stems, derivation,
  reflexives, compounds, affective nouns, agentives, phonology, and lenient
  macron handling).
- `learn_nahuatl` — vocabulary sets and individual word checks from Yan
  Garcia's *Learn Nahuatl*.
- a regression suite for a corrected classical text.

The suites mix positive checks (a form must parse) with negative checks (an
ungrammatical form must not parse). `npm test` fails on any regression.

The build can be checked separately:

```bash
npm run build
```

## Design goals

- **Linguistic transparency.** Preserve morpheme boundaries and grammatical
  structure instead of collapsing the word into an idiomatic translation.
- **Auditability.** Prefer explicit lexical facts for irregular, reduplicated,
  and lexicalized forms over opaque generation rules.
- **Reproducibility.** The same grammar, lexicon, and input produce the same
  analyses.
- **Portability.** Run the analyzer entirely in JavaScript/WebAssembly, with no
  external Prolog process.
- **Orthographic flexibility.** Accept Classical and modern spellings through
  strict/lenient parsing and conversion helpers.

## Limitations

- **Analysis only.** The project does not generate inflected forms from
  lemmas or morphological tags.
- **Word-level scope.** There is no syntactic parsing, named-entity
  recognition, or machine translation.
- **Morpheme glosses, not translations.** Glosses are compositional; they are
  not intended as idiomatic English translations.
- **Finite lexicon.** Unknown stems fail rather than being guessed. Coverage
  depends on the current lexicon.
- **No productive reduplication.** Attested reduplicated and frequentative
  stems are lexical entries; the analyzer does not derive new ones.
- **Partial morphophonology.** Some elision and stem-internal alternations are
  handled lexically rather than by general rules.
- **Lenient-mode cost.** Exhaustive macronization can be slow for long words
  with many unmarked vowels.
- **Dialect coverage.** The lexicon and grammar target the documented
  Classical and textbook varieties represented in the sources; other dialects
  may need additional lexical entries.

## Acknowledgements

This project builds on the work of Nahuatl scholars and the Prolog community:

- J. Richard Andrews, *Introduction to Classical Nahuatl* — grammatical model.
- Frances Karttunen, *An Analytical Dictionary of Nahuatl* — lexical evidence
  and vowel lengths.
- Yan Garcia, *Learn Nahuatl* — modern vocabulary and orthography.
- SWI-Prolog and `swipl-wasm` — the Prolog runtime used in the browser.

## References

- Andrews, J. Richard. *Introduction to Classical Nahuatl*. University of
  Oklahoma Press.
- Karttunen, Frances. *An Analytical Dictionary of Nahuatl*. University of
  Oklahoma Press.
- Garcia, Yan. *Learn Nahuatl*.
- Launey, Michel. *An Introduction to Classical Nahuatl*. Translated and
  adapted by Christopher Mackay. Cambridge University Press.

## License

Tlahtolmatini is released under the MIT License. See [`LICENSE`](LICENSE).
