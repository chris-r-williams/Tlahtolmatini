# Tlahtolmatini

Tlahtolmatini is a morphological analyzer for Nahuatl. It analyzes Nahuatl words and breaks them down into their constituent morphemes, providing detailed grammatical information and a word-level English translation.

Try it out here: https://www.chrishobbyprojects.com/nahuatl/

## Features

- Morphological analysis of  Nahuatl words
- Support for both Classical and Modern orthography, and conversion between them
- Identification of prefixes, noun stems,  verb stems, and suffixes
- Identification of grammatical function
- Handling of ambiguous morphemes
- Gives multiple potential parsings where possible
- English translation based on morpheme-level translation

## What Tlahtolmatini is *not*

- A dictionary. While it does translate the words, it does it using morpheme-level definitions, which means tlacualli/tlakwalli translated as "(it is) something eaten" instead of "(it is) food." I see this as a strength, because it has the potential to translate more words than could ever be in a dictionary.

- A word validator. It does its best to parse anything thrown at it, including obviously invalid words. Though it does fail to parse many of them.

- A translator. While it will (sort of) translate single words, the words are translated in a way that is more useful for analysis than translation, and it also gives multiple potential parsings that can only be narrowed down based on context.

## What it currently *doesn't* handle

- There are lots of grammatical constructions left to implement.

- Reduplication. It doesn't know how to parse that.

- Elision. It does know that prefixes like ni/no, ti/to, and mo are sometimes shortened to n, t, and m, respectively, and handles those. But it doesn't know that tlattalli is short for tlaittalli (and that's why the test case is tlaittalli and not tlattalli, for now).

## Building

```bash
npm run build
```

## Usage

```javascript
import { NahuatlParser, classicalToModern, modernToClassical } from 'tlahtolmatini';

const parser = new NahuatlParser();

// Analyze a word in classical orthography
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

// Analyze a word in modern orthography
const modernResult = parser.analyze('nitlakwa', 'modern');
console.log(modernResult);

// Convert between orthographies
const toModern = parser.classicalToModern('cuauhtemoc');
console.log(toModern); // Output: 'kwawtemok'

const toClassical = parser.modernToClassical('nikchiwa');
console.log(toClassical); // Output: 'nicchihua'
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
