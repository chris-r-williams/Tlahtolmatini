import { particles } from './particles.js';
import { prefixes } from './prefixes.js';
import { nounStems } from './noun_stems.js';
import { verbStems } from './verb_stems.js';
import { suffixes } from './suffixes.js';
import { interrogatives, adverbs, adjectives, interjections, numerals } from './others.js';

export const nahuatlLexicon = [
  ...particles,
  ...interrogatives,
  ...adverbs,
  ...adjectives,
  ...interjections,
  ...numerals,
  ...prefixes,
  ...verbStems,
  ...nounStems,
  ...suffixes,
];
