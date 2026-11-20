// Classical <-> modern (INALI-style) Nahuatl orthography conversion.
// Adapted from the standalone converter at
// /home/chris/Documents/NahuatlConverter/index.html

// Preserve case and macrons
const MACRON = { a: 'ā', e: 'ē', i: 'ī', o: 'ō', u: 'ū' };
const UNMACRON = { 'ā': 'a', 'ē': 'e', 'ī': 'i', 'ō': 'o', 'ū': 'u' };
const baseOf = ch => { const l = ch.toLowerCase(); return UNMACRON[l] || l; };
const isUpper = ch => ch !== ch.toLowerCase();

// A case-insensitive regex where every vowel also matches its macronized form
function makeRule(from, to) {
    const pattern = [...from]
        .map(c => (MACRON[c] ? '[' + c + MACRON[c] + ']\u0304?' : c))
        .join('');
    return { re: new RegExp(pattern, 'gi'), to };
}

// Builds the replacement for one match, maintaining capitalization
// and macronization of vowels that survive into the output
function convertMatch(matched, to) {
    const tokens = [];
    for (const ch of matched) {
        if (ch === '\u0304') tokens[tokens.length - 1].mac = true;
        else tokens.push({ ch, mac: ch.toLowerCase() in UNMACRON, used: false });
    }
    const allUpper = tokens.length > 1 && tokens.every(t => isUpper(t.ch));
    const firstUpper = isUpper(tokens[0].ch);
    let out = '';
    [...to].forEach((c, j) => {
        let mac = false;
        if (MACRON[c]) {
            const src = tokens.find(t => !t.used && baseOf(t.ch) === c);
            if (src) { src.used = true; mac = src.mac; }
        }
        let ch = mac ? MACRON[c] : c;
        if (allUpper || (j === 0 && firstUpper)) ch = ch.toUpperCase();
        out += ch;
    });
    return out;
}

function applyRules(text, rules) {
    for (const rule of rules) {
        text = text.replace(rule.re, m => convertMatch(m, rule.to));
    }
    return text;
}

// Rules
const MODERN_TO_CLASSICAL = [
    ['iwkin', 'yuhquin'], ['kis', 'quiz'], ['kch', 'cch'], ['kwa', 'cua'],
    ['kwi', 'cui'], ['kwe', 'cue'], ['kw', 'cuh'], ['stl', 'ztl'],
    ['aso', 'azo'], ['ts', 'tz'], ['sa', 'za'], ['sk', 'zc'], ['se', 'ce'],
    ['si', 'ci'], ['st', 'zt'], ['ka', 'ca'], ['ki', 'qui'], ['ke', 'que'],
    ['ok', 'oc'], ['k', 'c'], ['wa', 'hua'], ['we', 'hue'], ['wi', 'hui'],
    ['aw', 'auh'], ['ew', 'euh'], ['iw', 'iuh'], ['s', 'z']
].map(([f, t]) => makeRule(f, t));

const CLASSICAL_TO_MODERN = [
    ['z', 's'], ['yuh', 'iw'], ['cua', 'kwa'], ['cue', 'kwe'], ['cui', 'kwi'],
    ['qui', 'ki'], ['que', 'ke'], ['qu', 'k'], ['ce', 'se'], ['ci', 'si'],
    ['c', 'k'], ['kh', 'ch'], ['uh', 'w'], ['hu', 'w'], ['ç', 's']
].map(([f, t]) => makeRule(f, t));

export function modernToClassical(word) {
    return applyRules(word, MODERN_TO_CLASSICAL);
}

export function classicalToModern(word) {
    return applyRules(word, CLASSICAL_TO_MODERN);
}
