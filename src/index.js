import { classicalToModern, modernToClassical } from './orthography.js';

export { classicalToModern, modernToClassical };

let swiplInstance;

// Lexical glosses, built from the comments in parser.pl and lexicon.pl.
let glossIndex = new Map();

/**
 * Recursively converts the JavaScript object representation of a Prolog term 
 * back into a Prolog-style string representation with newlines and indentation.
 */
function formatPrologTerm(term, indentLevel = 0) {
    const INDENT = '  '; // Two spaces for indentation
    const currentIndent = INDENT.repeat(indentLevel);
    const nextIndent = INDENT.repeat(indentLevel + 1);

    if (Array.isArray(term)) {
        // Case 1: Prolog List (represented as JS Array)
        if (term.length === 0) return '[]';
        
        const elements = term.map(el => formatPrologTerm(el, indentLevel + 1));
        
        // Join with a comma, a newline, and the next level of indentation
        const content = elements.join(',\n' + nextIndent); 

        // Use newlines only if the content is complex (not a short list of atoms)
        if (content.length > 50 || elements.some(e => e.includes('\n'))) {
            return `[\n${nextIndent}${content}\n${currentIndent}]`;
        } else {
            return `[${elements.join(',')}]`;
        }

    } else if (typeof term === 'object' && term !== null) {
        // Case 2: Prolog Compound Term (represented as JS Object)
        for (const key in term) {
            if (key === '$t' || key === '$tag') continue; 
            if (key === 'functor' && typeof term[key] === 'string') continue;

            if (Array.isArray(term[key])) {
                const functor = key;
                let args = term[key];
                
                // Handle argument unwrapping
                if (args.length === 1 && Array.isArray(args[0])) {
                    args = args[0];
                }
                
                const formattedArgs = args.map(arg => formatPrologTerm(arg, indentLevel + 1));
                
                // Join arguments with a comma, newline, and indentation
                const content = formattedArgs.join(',\n' + nextIndent);

                // If arguments are complex, use multiline format
                if (content.length > 50 || formattedArgs.some(a => a.includes('\n'))) {
                     return `${functor}(\n${nextIndent}${content}\n${currentIndent})`;
                } else {
                    // Simple format for short terms: functor(arg1, arg2)
                    return `${functor}(${formattedArgs.join(',')})`;
                }
            }
        }
        return JSON.stringify(term);

    } else if (typeof term === 'string') {
        // Case 3: Prolog Atom or String
        if (term === '') {
            return "''";
        }
        // Quote if necessary
        if (term.includes("'") || term.includes(',') || term.includes(' ') || term.includes(':') || term.includes('(') || term.includes('[')) {
            return `'${term.replace(/'/g, '\\\'')}'`; 
        }
        return term; 
    } else {
        // Case 4: Other primitives
        return String(term);
    }
}

// ---------------------------------------------------------------------------
// Morphological display helpers
// ---------------------------------------------------------------------------

function isCompound(value) {
    return value !== null
        && typeof value === 'object'
        && value.$t === 't'
        && typeof value.functor === 'string';
}

function compoundArgs(value) {
    const raw = value[value.functor];
    if (!Array.isArray(raw)) return [];
    return raw.length === 1 && Array.isArray(raw[0]) ? raw[0] : raw;
}

function normalise(text) {
    return String(text)
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .toLowerCase();
}

function commentOf(line) {
    const index = line.lastIndexOf('%');
    return index >= 0 ? line.slice(index + 1).trim() : '';
}

function isMetaComment(gloss) {
    return /^(class [a-d]\b|unmarked spelling|alternate|variant\b|see\b|also\b)/i.test(gloss);
}

function registerGloss(key, gloss) {
    if (!key || !gloss) return;
    glossIndex.set(key, gloss);
    glossIndex.set(normalise(key), gloss);
}

const MANUAL_STEM_GLOSSES = {
    pilca: 'to be hanging; to remain hanging',
    oca: 'to lie, be lying',
    oc: 'to lie, be lying (perfective stem)',
    moteca: 'to settle down to; to lie stretched out',
    'mocāhua': 'to stop doing; to remain in a state',
    'motlālia': 'to sit down; to settle into a state',
    moman: 'to do gradually; to get into position',
    moquetza: 'to do gradually; to become gradually',
    'yā': 'to go',
    uh: 'to go (present singular stem)',
    hui: 'to go (present plural stem)',
    ye: 'to be (in the act of)',
    huetz: 'to fall',
    huitz: 'to come',
    ca: 'to be (in the act of)',
};

/**
 * Collect glosses from the trailing comments in parser.pl/lexicon.pl, e.g.
 *   verb_stem_type(cochi, 'cochi', 'coch', 'cochi', b, intransitive). % to sleep
 *   noun_stem_type('cal', 'li', 'cācal', 'cahcal', inanimate).          % house
 */
function buildGlossIndex(source) {
    glossIndex = new Map();

    for (const [key, gloss] of Object.entries(MANUAL_STEM_GLOSSES)) {
        registerGloss(key, gloss);
    }

    for (const rawLine of source.split(/\r?\n/)) {
        const line = rawLine.trim();
        let gloss = commentOf(line);
        if (!gloss) continue;

        let match = line.match(/^verb_stem_type\(\s*([A-Za-z0-9_]+),\s*'([^']+)',\s*'([^']+)',\s*'([^']+)'/);
        if (match) {
            const [, key, imperf, perf, hyp] = match;
            if (isMetaComment(gloss)) {
                gloss = glossIndex.get(key) || glossIndex.get(normalise(key)) || '';
            }
            if (!gloss) continue;
            for (const stem of [imperf, perf, hyp]) registerGloss(stem, gloss);
            registerGloss(key, gloss);
            continue;
        }

        match = line.match(/^noun_stem_type\(\s*'([^']+)',\s*'([^']*)',\s*'([^']*)',\s*'([^']*)'/);
        if (match) {
            const [, plain, , affinity, distributive] = match;
            if (isMetaComment(gloss)) continue;
            for (const stem of [plain, affinity, distributive]) registerGloss(stem, gloss);
        }
    }
}

function lookupGloss(stem) {
    if (!stem) return '';
    const candidates = [stem, normalise(stem)];

    // Stems with a deleted supportive i (27.3.2) are listed in the lexicon
    // with that i: lpiā < ilpiā.
    if (stem.startsWith('l')) candidates.push('i' + stem);

    // Nonactive stems are derived from an active source: chihualō < chihua,
    // huicō < huica, cochihua < cochi.
    if (stem.endsWith('lō')) candidates.push(stem.slice(0, -2));
    if (stem.endsWith('hua')) candidates.push(stem.slice(0, -3));
    if (stem.endsWith('ō')) {
        const base = stem.slice(0, -1);
        candidates.push(base + 'a', base + 'ca', base);
    }

    for (const candidate of candidates) {
        if (glossIndex.has(candidate)) return glossIndex.get(candidate);
        const key = normalise(candidate);
        if (glossIndex.has(key)) return glossIndex.get(key);
    }
    return '';
}

const PARTICLE_GLOSSES = {
    ach: "doubt particle: “I don’t know…”",
    anca: "perhaps",
    aoc: "not yet",
    at: "perhaps",
    auh: "and, but",
    'āuh': "and then",
    ax: "perhaps",
    aya: "perhaps",
    ayoc: "not yet",
    ca: "indeed; as is known",
    'cānin': "where?",
    cuix: "interrogative particle",
    elele: "exclamation",
    hue: "exclamation",
    hui: "alas!",
    hueya: "already; for a long time",
    ihyo: "indeed, truly",
    in: "definite article; topic marker",
    iye: "perhaps",
    'mā': "optative particle: may, let",
    mah: "optative particle: may, let",
    mec: "perhaps",
    nec: "perhaps",
    'nō': "also, too",
    o: "still, yet",
    'ō': "antecessive particle (prior/completed action)",
    oc: "still, yet",
    quena: "yes",
    quin: "perhaps, maybe",
    'tēl': "but, however; indeed",
    'tlā': "if, when",
    xi: "perhaps",
    xiuh: "maybe",
    yahua: "perhaps",
    ye: "already",
    'zā': "only",
    zan: "only",
    zo: "although, even if",
    'mō': "not (in ah-mō, “no”)",
};

const PARTICLE_INDEX = new Map(
    Object.entries(PARTICLE_GLOSSES).map(([key, value]) => [normalise(key), value])
);

const PERSON_INFO = {
    pers_ni: {
        variants: ['ni', 'n'],
        title: 'Subject — 1st person singular',
        description: 'The subject is “I”.',
    },
    pers_ti: {
        variants: ['ti', 't'],
        title: 'Subject — 2nd person singular',
        description: 'The subject is “you” (singular).',
    },
    pers_an: {
        variants: ['an', 'am'],
        title: 'Subject — 2nd person plural',
        description: 'The subject is “you” (plural).',
    },
    pers_xi: {
        variants: ['xi', 'x'],
        title: 'Subject — imperative/optative',
        description: 'Second-person subject used in commands and wishes (“you, may you…”).',
    },
};

const TENSE_INFO = {
    z: {
        title: 'Future tense',
        description: 'The future-tense morph -z-: the action will happen.',
    },
    ni: {
        title: 'Customary present / past optative',
        description: 'The morph -ni- marks a customary present or, on a perfective stem, the past optative.',
    },
    ya: {
        title: 'Imperfect',
        description: 'The imperfect morph -ya-: a past habitual or ongoing action (“used to…”).',
    },
    ca: {
        title: 'Distant past',
        description: 'The distant-past morph -ca-: an action completed before another past event (“had…”).',
    },
    h: {
        title: 'Plural / admonitive',
        description: 'The morph -h can mark a plural subject or the admonitive mood, depending on the stem.',
    },
};

const OBJECT_INFO = [
    { forms: ['nēch', 'net', 'nez', 'nex'], title: 'Object — 1st person singular', description: '“me” (the object is the speaker).' },
    { forms: ['tēch', 'tet', 'tez', 'tex'], title: 'Object — 1st person plural', description: '“us” (the object includes the speaker).' },
    { forms: ['amēch', 'amet', 'amez', 'amex'], title: 'Object — 2nd person plural', description: '“you” (plural object).' },
    { forms: ['mitz', 'mich', 'mit', 'mi', 'miz', 'mix'], title: 'Object — 2nd person singular', description: '“you” (singular object).' },
    { forms: ['no', 'n'], title: 'Reflexive object', description: 'The subject acts on itself (“myself”).' },
    { forms: ['mo', 'm'], title: 'Reflexive object', description: 'The subject acts on itself (“yourself / himself / herself”).' },
    { forms: ['to', 't'], title: 'Reflexive object', description: 'The subject acts on itself (“ourselves / yourselves / themselves”).' },
    { forms: ['ne'], title: 'Reflexive marker', description: 'Shuntline reflexive marker left behind in a passive construction.' },
];

function objectInfo(text) {
    const t = normalise(text);

    for (const entry of OBJECT_INFO) {
        if (entry.forms.map(normalise).includes(t)) return entry;
    }

    if (t === 'tla') {
        return {
            title: 'Object — non-specific',
            description: 'tla-: an indefinite or non-specific object (“something, things”).',
        };
    }
    if (t === 'tē') {
        return {
            title: 'Object — human/indefinite',
            description: 'tē-: an indefinite human object (“someone, people”).',
        };
    }

    if (['c', 'qu', 'qui', 'quim', 'quin', 'quiz', 'quix'].includes(t)) {
        const plural = ['quim', 'quin', 'quiz', 'quix'].includes(t);
        return {
            title: plural ? 'Object — 3rd person plural' : 'Object — 3rd person',
            description: plural ? '“them” (a specific third-person plural object).' : '“him / her / it” (a specific third-person object).',
        };
    }

    return {
        title: 'Object prefix',
        description: 'A verb-object pronoun marking the person and number of the object.',
    };
}

function vocabularyText(value) {
    if (typeof value === 'string') return value;
    if (isCompound(value)) {
        if (value.functor === 'va') return compoundArgs(value)[0] || '';
        if (value.functor === 'directional_prefix') return compoundArgs(value)[0] || '';
        return compoundArgs(value).map(vocabularyText).join('');
    }
    if (Array.isArray(value)) return value.map(vocabularyText).join('');
    return value == null ? '' : String(value);
}

function addPerson(person, parts) {
    const info = PERSON_INFO[person];
    if (!info) return;
    parts.push({
        variants: info.variants,
        role: 'subject',
        title: info.title,
        description: info.description,
    });
}

function addPrefix(value, parts) {
    if (value === 'negativizing_prefix') {
        parts.push({
            variants: ['ah', 'ca'],
            role: 'prefix',
            title: 'Negativizing prefix',
            description: 'ah-/ca- negates the clause (“not”).',
        });
    } else if (value === 'antecessive_order_prefix') {
        parts.push({
            text: 'ō',
            role: 'prefix',
            title: 'Antecessive prefix',
            description: 'ō- marks an action as already completed or prior; common in past narration.',
        });
    } else if (value === 'honorific') {
        parts.push({
            text: 'tzin',
            role: 'suffix',
            title: 'Honorific suffix',
            description: '-tzin is an honorific or diminutive ending (“revered, dear, little”).',
        });
    }
}

function addParticle(value, parts) {
    if (typeof value !== 'string') return;
    const gloss = PARTICLE_INDEX.get(normalise(value)) || '';
    parts.push({
        text: value,
        role: 'particle',
        title: 'Particle',
        description: gloss || 'An independent grammatical particle.',
    });
}

function addClosedClass(type, word, parts) {
    if (!word) return;
    const labels = {
        pronoun: 'Pronoun',
        numeral: 'Numeral',
        adverb: 'Adverb',
        adjective: 'Adjective',
        locative: 'Locative',
        demonstrative: 'Demonstrative',
        irregular_verb: 'Irregular verb',
        noun: 'Noun',
    };
    parts.push({
        text: word,
        role: 'particle',
        title: labels[type] || 'Closed-class word',
        description: 'A closed-class vocabulary item or irregular form.',
    });
}

function addArticle(parts) {
    parts.push({
        text: 'in',
        role: 'particle',
        title: 'Article',
        description: 'in — definite article or topic marker.',
    });
}

function addPossessiveState(value, parts) {
    const text = vocabularyText(value);
    if (!text) return;

    const state = normalise(text);
    let title = 'Possessive prefix';
    let description = 'A possessive pronoun marking the possessor.';

    if (state === 'no' || state === 'n') {
        title = 'Possessive prefix — my';
        description = 'The possessor is “I” (“my”).';
    } else if (state === 'mo' || state === 'm') {
        title = 'Possessive prefix — your/his/her/its';
        description = 'The possessor is “you (sg)” or “he/she/it”.';
    } else if (state === 'to' || state === 't') {
        title = 'Possessive prefix — our/your (pl)/their';
        description = 'The possessor is “we”, “you (pl)”, or “they”.';
    } else if (state === 'amo' || state === 'am') {
        title = 'Possessive prefix — your (pl)';
        description = 'The possessor is “you” (plural).';
    } else if (['i', 'ī', 'in', 'īn', 'im', 'īm'].includes(state)) {
        title = 'Possessive prefix — his/her/its';
        description = 'The possessor is “he”, “she”, or “it”.';
    }

    parts.push({ text, role: 'object', title, description });
}

function addValence(value, parts) {
    const text = vocabularyText(value);
    if (!text) return;
    const info = objectInfo(text);
    parts.push({
        text,
        role: 'object',
        title: info.title,
        description: info.description,
    });
}

function splitNonactiveStem(stem) {
    if (stem.endsWith('lō') && lookupGloss(stem.slice(0, -2))) {
        return {
            source: stem.slice(0, -2),
            suffix: 'lō',
            title: 'Passive suffix',
            description: 'The suffix -lō marks passive voice (“be done”).',
        };
    }

    if (stem.endsWith('hua') && lookupGloss(stem.slice(0, -3))) {
        return {
            source: stem.slice(0, -3),
            suffix: 'hua',
            title: 'Nonactive suffix',
            description: 'The suffix -hua marks nonactive (passive/impersonal) voice.',
        };
    }

    if (stem.endsWith('ō')) {
        const base = stem.slice(0, -1);
        for (const candidate of [base, base + 'a', base + 'ca']) {
            if (lookupGloss(candidate)) {
                return {
                    source: base,
                    glossSource: candidate,
                    suffix: 'ō',
                    title: 'Impersonal suffix',
                    description: 'The suffix -ō marks impersonal or passive voice (“people do it”).',
                };
            }
        }
    }

    return null;
}

function addStem(stem, role, parts, glossKey = stem) {
    if (typeof stem === 'string') {
        if (!stem) return;

        const nonactive = splitNonactiveStem(stem);
        if (nonactive) {
            addStem(nonactive.source, role, parts, nonactive.glossSource || nonactive.source);
            parts.push({
                text: nonactive.suffix,
                role: 'suffix',
                title: nonactive.title,
                description: nonactive.description,
            });
            return;
        }

        const gloss = lookupGloss(glossKey);
        const isNoun = role === 'noun' || role === 'embed-noun' || role === 'head-noun';
        const titles = {
            'verb': 'Verb stem',
            'embed-verb': 'Embedded verb stem',
            'matrix-verb': 'Matrix verb stem',
            'noun': 'Noun stem',
            'embed-noun': 'Embedded noun stem',
            'head-noun': 'Head noun stem',
        };
        parts.push({
            text: stem,
            role: isNoun ? 'noun' : 'stem',
            title: titles[role] || 'Stem',
            description: gloss
                ? `“${gloss}”`
                : 'A lexical stem; no gloss is recorded for it in the analyzer lexicon.',
        });
        return;
    }

    if (Array.isArray(stem)) {
        for (const item of stem) addStemStructure(item, role, parts);
        return;
    }

    if (isCompound(stem)) {
        addStemStructure(stem, role, parts);
    }
}

function addStemStructure(structure, role, parts) {
    if (typeof structure === 'string') {
        addStem(structure, role, parts);
        return;
    }

    if (Array.isArray(structure)) {
        for (const item of structure) addStemStructure(item, role, parts);
        return;
    }

    if (!isCompound(structure)) return;

    switch (structure.functor) {
        case 'future_embed': {
            const [embed, future, matrix] = compoundArgs(structure);
            const children = [];
            addStemStructure(embed, 'embed-verb', children);
            if (future) {
                children.push({
                    text: future,
                    role: 'tense',
                    title: 'Future marker inside the compound',
                    description: 'The -z- belongs to the embedded verb and marks its future action.',
                });
            }
            addStemStructure(matrix, 'matrix-verb', children);
            parts.push({ type: 'group', children, compound: COMPOUND_KIND_INFO.future_embed });
            return;
        }

        case 'connective_t': {
            const [embed, connector, matrix] = compoundArgs(structure);
            const children = [];
            addStemStructure(embed, 'embed-verb', children);
            if (connector) {
                children.push({
                    text: connector,
                    role: 'linker',
                    title: 'Connective -t-',
                    description: 'The connective -t-/-ti- links an embedded preterit verb to the matrix verb of the compound.',
                });
            }
            addStemStructure(matrix, 'matrix-verb', children);
            parts.push({ type: 'group', children, compound: COMPOUND_KIND_INFO.connective_t });
            return;
        }

        case 'nominal_embed': {
            const [embed, matrix] = compoundArgs(structure);
            const children = [];
            addStemStructure(embed, 'embed-noun', children);
            addStemStructure(matrix, 'head-noun', children);
            parts.push({ type: 'group', children, compound: COMPOUND_KIND_INFO.nominal_embed });
            return;
        }

        case 'matrix': {
            for (const item of compoundArgs(structure)) {
                addStemStructure(item, 'matrix-verb', parts);
            }
            return;
        }

        case 'nonactive': {
            const [source, suffix] = compoundArgs(structure);
            addStemStructure(source, 'embed-verb', parts);
            if (suffix) {
                parts.push({
                    text: suffix,
                    role: 'suffix',
                    title: 'Nonactive suffix',
                    description: `The nonactive suffix -${suffix}- marks passive or impersonal voice.`,
                });
            }
            return;
        }

        case 'directional_prefix': {
            const direction = compoundArgs(structure)[0] || '';
            parts.push({
                text: direction,
                role: 'prefix',
                title: 'Directional prefix',
                description: direction === 'huāl'
                    ? 'huāl- “hither, toward the speaker”.'
                    : 'on- “thither, away from the speaker”.',
            });
            return;
        }

        case 'va': {
            addValence(structure, parts);
            return;
        }

        case 'agentive': {
            const [prefix, base, suffix] = compoundArgs(structure);
            if (prefix) {
                parts.push({
                    text: prefix,
                    role: 'object',
                    title: 'Reflexive object',
                    description: 'The subject acts on itself.',
                });
            }
            addStem(base, 'verb', parts);
            if (suffix) {
                parts.push({
                    text: suffix,
                    role: 'suffix',
                    title: 'Agentive suffix',
                    description: 'The general-use preterit-agentive ending -quētl (“one who has …”).',
                });
            }
            return;
        }

        case 'closed_class': {
            const [type, word] = compoundArgs(structure);
            addClosedClass(type, word, parts);
            return;
        }

        case 'verb_citation': {
            const [word] = compoundArgs(structure);
            addStem(word, 'verb', parts);
            return;
        }

        default: {
            for (const item of compoundArgs(structure)) {
                addStemStructure(item, role, parts);
            }
        }
    }
}

function addPredicateComponent(component, context, parts) {
    if (Array.isArray(component)) {
        if (context === 'nnc') {
            addPossessiveState(component, parts);
        } else {
            addValence(component, parts);
        }
        return;
    }

    if (isCompound(component)) {
        if (component.functor === 'va') {
            addValence(component, parts);
            return;
        }
        if (component.functor === 'directional_prefix') {
            addStemStructure(component, 'verb', parts);
            return;
        }
    }

    addStemStructure(component, context === 'nnc' ? 'noun' : 'verb', parts);
}

function addTense(tense, parts) {
    if (!tense) return;
    const info = TENSE_INFO[tense];
    parts.push({
        text: tense,
        role: 'tense',
        title: info ? info.title : 'Tense suffix',
        description: info ? info.description : 'A tense or mood ending.',
    });
}

function addNumbers(numbers, context, parts) {
    const [num1 = '', num2 = ''] = numbers || [];
    if (!num1 && !num2) return;

    const text = num1 + num2;
    let title = 'Number ending';
    let description = 'A number, class, or tense ending.';

    if (context === 'nnc') {
        if (num1 === 'hu' && num2 === 'an') {
            title = 'Possessive plural';
            description = 'The possessive plural ending -huan.';
        } else if ((num1 === 'uh' || num1 === 'hui') && !num2) {
            title = 'Possessive singular';
            description = `The possessive singular ending -${num1}.`;
        } else if (['li', 'tl', 'tli', 'in', 'Ø'].includes(num1) && !num2) {
            title = 'Absolutive singular';
            description = `The absolutive singular ending -${num1}.`;
        } else if (num2 === 'h' || num2 === 'eh' || num2 === 'an') {
            title = 'Plural';
            description = 'A plural ending for the noun.';
        }
    } else {
        if (num1 === 'c' && !num2) {
            title = 'Preterit marker';
            description = 'The preterit-tense -c- used with Class A perfective stems.';
        } else if (num1 === 'qu' && num2 === 'eh') {
            title = 'Plural';
            description = 'Plural subject/object ending (e.g. “they”, “we”, “you pl.”).';
        } else if (num2 === 'h') {
            title = 'Plural';
            description = 'Plural number ending.';
        } else if (num2 === 'ān') {
            title = 'Plural (optative)';
            description = 'Plural ending used in optative/admonitive forms.';
        } else if (num2 === 'eh') {
            title = 'Plural';
            description = 'Plural number ending.';
        } else if (num2 === 'in') {
            title = 'Plural / admonitive';
            description = 'A plural or admonitive ending.';
        }
    }

    parts.push({ text, role: 'number', title, description });
}

function addPredicate(predicate, context, parts) {
    const args = compoundArgs(predicate);
    if (args.length === 0) return;

    const tense = args.length > 1 ? args[args.length - 1] : null;
    const main = args[0];

    if (Array.isArray(main)) {
        for (const component of main) addPredicateComponent(component, context, parts);
    } else {
        addPredicateComponent(main, context, parts);
    }

    addTense(tense, parts);
}

function collectTerm(term, parts, context = 'vv') {
    if (typeof term === 'string') {
        addParticle(term, parts);
        return;
    }

    if (Array.isArray(term)) {
        for (const item of term) {
            if (item === 'negativizing_prefix' || item === 'antecessive_order_prefix' || item === 'honorific') {
                addPrefix(item, parts);
            } else if (item === 'article') {
                addArticle(parts);
            } else {
                collectTerm(item, parts, context);
            }
        }
        return;
    }

    if (!isCompound(term)) return;

    switch (term.functor) {
        case 'vnc': {
            const [person, predicate, numbers] = compoundArgs(term);
            addPerson(person, parts);
            addPredicate(predicate, 'vnc', parts);
            addNumbers(numbers, 'vnc', parts);
            break;
        }
        case 'nnc': {
            const [person, predicate, numbers] = compoundArgs(term);
            addPerson(person, parts);
            addPredicate(predicate, 'nnc', parts);
            addNumbers(numbers, 'nnc', parts);
            break;
        }
        case 'closed_class': {
            const [type, word] = compoundArgs(term);
            addClosedClass(type, word, parts);
            break;
        }
        case 'verb_citation': {
            const [word] = compoundArgs(term);
            addStem(word, 'verb', parts);
            break;
        }
        default: {
            for (const item of compoundArgs(term)) collectTerm(item, parts, context);
        }
    }
}

function chooseVariant(part, word, position) {
    if (!part.variants || part.variants.length === 0) return part.text || '';

    const rest = normalise(word.slice(position));
    const matching = part.variants.find(variant => rest.startsWith(normalise(variant)));
    if (matching !== undefined) return matching;

    // Prefer the first (canonical) variant, but fall back to any variant that
    // fits at this position.
    return part.variants.find(variant => normalise(variant) !== '' && rest.startsWith(normalise(variant)))
        || part.variants[0];
}

/**
 * Build the display tree and a flat segment list from a parse term.
 *
 * Compound structures become group nodes, which the UI renders with nested
 * parentheses. Segment leaves are aligned with the surface spelling where
 * possible (so the display still shows the word as it was entered).
 */
function buildDisplay(term, word) {
    const parts = [];
    collectTerm(term, parts);

    const state = { position: 0 };
    alignDisplayNodes(parts, word, state);

    const displayNodes = pruneDisplayNodes(parts);
    const segments = [];
    flattenDisplaySegments(displayNodes, segments);

    return { displayNodes, segments };
}

function alignDisplayNodes(nodes, word, state) {
    for (const node of nodes) {
        if (node.type === 'group') {
            alignDisplayNodes(node.children, word, state);
            continue;
        }

        let text = chooseVariant(node, word, state.position);

        if (text) {
            const surface = word.slice(state.position, state.position + text.length);
            if (normalise(surface) === normalise(text)) {
                text = surface;
            }
            state.position += text.length;
        }

        node.text = text || '';
    }
}

function pruneDisplayNodes(nodes) {
    const result = [];

    for (const node of nodes) {
        if (node.type === 'group') {
            const children = pruneDisplayNodes(node.children);
            if (children.length > 0) {
                result.push({ ...node, children });
            }
        } else if (node.text) {
            result.push(node);
        }
    }

    return result;
}

function flattenDisplaySegments(nodes, out) {
    for (const node of nodes) {
        if (node.type === 'group') {
            flattenDisplaySegments(node.children, out);
            continue;
        }

        out.push({
            text: node.text,
            role: node.role || 'stem',
            title: node.title || 'Morpheme',
            description: node.description || '',
        });
    }
}

const COMPOUND_KIND_INFO = {
    future_embed: {
        kind: 'Future-embed compound',
        description: 'A future-tense verb is embedded before a matrix verb: embed + -z- + matrix.',
    },
    connective_t: {
        kind: 'Connective-t compound',
        description: 'An embedded verb is linked to a matrix verb by the connective -t-/-ti-.',
    },
    nominal_embed: {
        kind: 'Compound noun',
        description: 'An embedded noun stem is combined with a head noun stem.',
    },
};

function collectCompoundKinds(value, found = []) {
    if (value == null || typeof value === 'string') return found;

    if (Array.isArray(value)) {
        for (const item of value) collectCompoundKinds(item, found);
        return found;
    }

    if (!isCompound(value)) return found;

    const info = COMPOUND_KIND_INFO[value.functor];
    if (info) found.push({ ...info });

    for (const arg of compoundArgs(value)) {
        collectCompoundKinds(arg, found);
    }

    return found;
}

/**
 * Initialize Prolog with the given script
 * @param {string} scriptPath - Path to the Prolog script to load
 */
export async function initProlog(scriptPath, lexiconPath) {
    try {
        const { SWIPL } = await import(/* webpackChunkName: "swipl-wasm" */ 'swipl-wasm');
        const SWIPLFactory = SWIPL || (await import(/* webpackChunkName: "swipl-wasm" */ 'swipl-wasm')).default;
        swiplInstance = await SWIPLFactory({ arguments: ["-q"] });

        const readSource = async (path) => {
            // In browser environment, fetch the script
            if (typeof window !== 'undefined') {
                const response = await fetch(path);
                if (!response.ok) throw new Error(`Could not load ${path}`);
                return response.text();
            }
            // Node.js environment
            // We use a dynamic import with a URL to avoid webpack trying to bundle 'fs'
            const { readFileSync } = await import('node:fs');
            return readFileSync(path, 'utf8');
        };

        let prologSource = await readSource(scriptPath);

        // The grammar and the lexicon are separate files.  Default to
        // lexicon.pl beside parser.pl when no explicit path is given.
        const resolvedLexicon = lexiconPath
            || scriptPath.replace(/(parser\.pl)(\?.*)?$/, (_, file, query = '') => `lexicon.pl${query}`);
        if (resolvedLexicon && resolvedLexicon !== scriptPath) {
            try {
                prologSource += '\n' + await readSource(resolvedLexicon);
            } catch (error) {
                // A caller-supplied parser may be self-contained.
                if (lexiconPath) throw error;
            }
        }

        buildGlossIndex(prologSource);
        
        // Load the Prolog source code
        await swiplInstance.prolog.load_string(prologSource);
        
    } catch (error) {
        console.error("Error initializing Prolog:", error);
        throw error;
    }
}

/**
 * Parse a word in lenient mode and return every distinct parse.
 *
 * mode = 'any'   — unmacronized vowels may be short or long; macronized
 *                  vowels in the input are fixed.
 * mode = 'these' — parse the input exactly as written.
 *
 * @param {string} word
 * @param {'any'|'these'} mode
 * @returns {Promise<object>}
 */
export async function analyzeAll(word, mode = 'any') {
    try {
        const escaped = String(word).replace(/\\/g, '\\\\').replace(/'/g, "\\'");
        const query = mode === 'these'
            ? `parse('${escaped}', P).`
            : `parse_lenient('${escaped}', M, P).`;

        const byParse = new Map();
        const macronCount = text => (String(text).match(/[āēīōū]/g) || []).length;

        for await (const solution of swiplInstance.prolog.query(query)) {
            if (!solution.P) continue;

            const term = solution.P;
            const macronized = mode === 'these' ? word : (solution.M || word);
            const formatted = formatPrologTerm(term);
            const { segments, displayNodes } = buildDisplay(term, macronized);
            const score = segments.length
                + (isParticleTerm(term) ? 50 : 0)
                + (segments.some(segment => segment.role === 'linker') ? 2 : 0);

            const candidate = {
                term,
                macronized,
                formatted,
                segments,
                displayNodes,
                compoundKinds: collectCompoundKinds(term),
                score,
            };
            const existing = byParse.get(formatted);

            // The same parse may be reachable from several macronizations.
            // Keep one row per parse, preferring the most fully macronized
            // spelling (and then the higher-scoring segmentation).
            if (!existing
                || macronCount(macronized) > macronCount(existing.macronized)
                || (macronCount(macronized) === macronCount(existing.macronized)
                    && score > existing.score)) {
                byParse.set(formatted, candidate);
            }
        }

        const results = [...byParse.values()]
            .sort((a, b) => b.score - a.score || a.macronized.localeCompare(b.macronized));

        return {
            ok: results.length > 0,
            word,
            mode,
            results,
        };
    } catch (error) {
        console.error("Lenient Parse Error:", error);
        throw error;
    }
}

/**
 * Parse a word and return the raw Prolog term together with a display-ready
 * segmentation.
 * @param {string} word - The word to parse
 * @returns {Promise<object>} Analysis result
 */
function isParticleTerm(term) {
    if (typeof term === 'string') return true;
    if (Array.isArray(term)) {
        return term.some(item =>
            typeof item === 'string'
            && !['negativizing_prefix', 'antecessive_order_prefix', 'honorific'].includes(item)
        );
    }
    return false;
}

export async function analyze(word) {
    try {
        const escaped = String(word).replace(/\\/g, '\\\\').replace(/'/g, "\\'");
        const query = `parse('${escaped}', P).`;

        // Prolog may find several parses. Prefer a particle reading when one
        // exists, and otherwise the parse that yields the most morpheme
        // segments (with a small bonus for an exposed compound linker).
        let best = null;
        let seen = 0;

        for await (const solution of swiplInstance.prolog.query(query)) {
            if (!solution.P) continue;

            const { segments, displayNodes } = buildDisplay(solution.P, word);
            const score = segments.length
                + (isParticleTerm(solution.P) ? 50 : 0)
                + (segments.some(segment => segment.role === 'linker') ? 2 : 0);

            if (!best || score > best.score) {
                best = {
                    score,
                    term: solution.P,
                    formatted: formatPrologTerm(solution.P),
                    segments,
                    displayNodes,
                    compoundKinds: collectCompoundKinds(solution.P),
                };
            }

            if (++seen >= 30) break;
        }

        if (!best) {
            return { ok: false, word, formatted: `Parse failed for "${word}". (No solution found)` };
        }

        return { ok: true, word, ...best };
    } catch (error) {
        console.error("Parse Error:", error);
        throw error;
    }
}

/**
 * Parse a word using the Prolog parser
 * @param {string} word - The word to parse
 * @returns {string} The formatted parse result
 */
export async function parse(word) {
    const analysis = await analyze(word);
    return analysis.ok
        ? analysis.formatted
        : `Parse failed for "${word}". (No solution found)`;
}

/**
 * Find all possible macronizations of a word
 * @param {string} word - The word to macronize
 * @returns {string[]} Array of possible macronizations
 */
export async function macronize(word) {
    try {
        const escaped = String(word).replace(/\\/g, '\\\\').replace(/'/g, "\\'");
        const query = `find_macronizations('${escaped}', M).`;
        const allSolutions = [];

        for await (const solution of swiplInstance.prolog.query(query)) {
            if (solution.M) {
                allSolutions.push(...solution.M);
            }
        }

        return allSolutions;
    } catch (error) {
        console.error("Macronization Error:", error);
        throw error;
    }
}
