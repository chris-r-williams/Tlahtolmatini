import { nahuatlLexicon } from './lexicon.js';

/**
 * Sorts an array of morphemes by their length in descending order
 * @param {Array<Object>} arr - Array of morpheme objects with 'morpheme' property
 * @returns {Array<Object>} Sorted array of morphemes, longest first
 */
export const sortByMorphemeLengthDesc = (arr) => [...arr].sort((a, b) => b.morpheme.length - a.morpheme.length);

/**
 * Set of morphemes that can nominalize verbs (turn verbs into nouns)
 * @type {Set<string>}
 */
export const nominalizingSuffixMorphemes = new Set(
    nahuatlLexicon.filter(m => m.type === "suffix" && m.nominalizing).map(m => m.morpheme)
);

/**
 * Set of morphemes that mark plural forms of nouns
 * @type {Set<string>}
 */
export const pluralSuffixMorphemes = new Set(
    nahuatlLexicon.filter(m => m.type === "suffix" && (m.category === "plural" || m.category === "plural_marker")).map(m => m.morpheme)
);

/**
 * Converts a Nahuatl word from modern orthography to classical orthography
 * @param {string} word - Word in modern Nahuatl orthography
 * @returns {string} Word converted to classical orthography
 */
export function modernToClassical (word) {
	// Remove macrons and any other diacritical marks
	let classical = word.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    return (
    	(classical = classical.replaceAll("iwkin", "yuhquin")),
        (classical = classical.replaceAll("kis", "quiz")),
    	(classical = classical.replaceAll("kch", "cch")),
    	(classical = classical.replaceAll("kwa", "cua")),
    	(classical = classical.replaceAll("kwi", "cui")),
    	(classical = classical.replaceAll("kwe", "cue")),
    	(classical = classical.replaceAll("stl", "ztl")),
    	(classical = classical.replaceAll("aso", "azo")),
        (classical = classical.replaceAll("ts", "tz")),
    	(classical = classical.replaceAll("sa", "za")),
        (classical = classical.replaceAll("se", "ce")),
        (classical = classical.replaceAll("si", "ci")),
        (classical = classical.replaceAll("kk", "cqu")),
        (classical = classical.replaceAll("ka", "ca")),
        (classical = classical.replaceAll("ki", "qui")),
        (classical = classical.replaceAll("ke", "que")),
        (classical = classical.replaceAll("ok", "oc")),
        (classical = classical.replaceAll("k", "c")),
        (classical = classical.replaceAll("wa", "hua")),
        (classical = classical.replaceAll("we", "hue")),
        (classical = classical.replaceAll("wi", "hui")),
        (classical = classical.replaceAll("aw", "auh")),
        (classical = classical.replaceAll("ew", "euh")),
        (classical = classical.replaceAll("iw", "iuh")),       
        classical
    );
};

/**
 * Converts a Nahuatl morpheme from classical orthography to modern orthography
 * @param {string} morpheme - Morpheme in classical Nahuatl orthography
 * @returns {string} Morpheme converted to modern orthography
 */
export function classicalToModern (morpheme) {
    // remove macrons and any other diacritical marks
	let modern = morpheme.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    return (
        (modern = modern.replaceAll("z", "s")),
        (modern = modern.replaceAll("yuh", "iw")),
        (modern = modern.replaceAll("cua", "kwa")),
        (modern = modern.replaceAll("cue", "kwe")),
        (modern = modern.replaceAll("cui", "kwi")),
        (modern = modern.replaceAll("qui", "ki")),
        (modern = modern.replaceAll("que", "ke")),
        (modern = modern.replaceAll("qu", "k")),
        (modern = modern.replaceAll("ce", "se")),
        (modern = modern.replaceAll("ci", "si")), 
        (modern = modern.replaceAll("c", "k")),
        (modern = modern.replaceAll("kh", "ch")),
        (modern = modern.replaceAll("uh", "w")),
        (modern = modern.replaceAll("hu", "w")),
        modern
    );
};
