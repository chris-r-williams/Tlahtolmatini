:- encoding(utf8).

% Based on Andrews' Introduction to Classical Nahuatl

% ============================================================================
% PARTICLE DEFINITIONS
% ============================================================================

particle('ach').
particle('anca').
particle('aoc').
particle('at').
particle('auh').
particle('āuh').
particle('ax').
particle('aya').
particle('ayoc').
particle('ca').
particle('cuix').
particle('elele').
particle('hue').
particle('hui').
particle('hueya').
particle('ihyo').
particle('in').
particle('iye').
particle('mā').
particle('mah').
particle('mec').
particle('nec').
particle('nō').
particle('o').
particle('ō').
particle('oc').
particle('quin').
particle('tēl').
particle('tlā').
particle('xi').
particle('xiuh').
particle('yahua').
particle('ye').
particle('zā').
particle('zan').
particle('zo').

particle_prefix('ah', negative).
particle_prefix('ca', negative).

particle_suffix('tzin', honorific).

% ============================================================================
% PARTICLE PARSING
% ============================================================================

% Parse particle: [particle_prefix]+particle+[particle_suffix]
parse_particle(Word, Parse) :-
    particle(CoreParticle),
    (Prefix = '' ; particle_prefix(Prefix, PrefixType)),
    (Suffix = '' ; particle_suffix(Suffix, SuffixType)),
    atom_concat(Prefix, CoreParticle, Temp),
    atom_concat(Temp, Suffix, Word),
    (Prefix = '' -> PrefixInfo = none ; PrefixInfo = prefix(Prefix, PrefixType)),
    (Suffix = '' -> SuffixInfo = none ; SuffixInfo = suffix(Suffix, SuffixType)),
    Parse = particle(prefix:PrefixInfo, core:CoreParticle, suffix:SuffixInfo).

% ============================================================================
% VERB STEM DEFINITIONS
% ============================================================================
% verb_stem(Verb, ImperfectiveStem, PerfectiveStem, HypotheticalStem, Class)

verb_stem(temo, 'temō', 'temōc', 'temō', a2, intransitive).
verb_stem(ihcuiloa, 'ihcuiloā', 'ihcuiloh', 'ihcuilō', c, transitive).
verb_stem(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, transitive).
verb_stem(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, intransitive).
verb_stem(chihua, 'chīhua', 'chīhuac', 'chīhuā', b, transitive).
verb_stem(tlazohtla, 'tlazohtlā', 'tlazohtlac', 'tlazohtlā', b, transitive).
verb_stem(zoma, 'zōmā', 'zōmah', 'zōmā', b, transitive).
verb_stem(choloa, 'choloā', 'choloh', 'cholō', c, intransitive).
verb_stem(pano, 'panō', 'panōc', 'panō', b, intransitive).
verb_stem(nequi, 'nequi', 'nec', 'nequi', b, transitive).
verb_stem(qui, 'qui', 'quic', 'qui', b, transitive).
verb_stem(cochi, 'cochi', 'cochic', 'cochi', a1, intransitive).

% ============================================================================
% PERSON MARKERS
% ============================================================================

pers_zero('').
pers_ni('ni').
pers_ni('n').
pers_ti('ti').
pers_ti('t').
pers_an('an').
pers_an('am').
pers_xi('xi').
pers_xi('x').

% ============================================================================
% PLURAL SUFFIX MARKERS
% ============================================================================

plural_suffix_in('in').
plural_suffix_in('ih').

% ============================================================================
% DIRECTIONAL MARKERS
% ============================================================================

dir('huāl').
dir('on').

% ============================================================================
% VALENCE POSITIONS
% ============================================================================

% Valence assimilations
im('im').
im('in').
im('iz').
im('ix').

itz('itz').
itz('ich').
itz('it').
itz('i').
itz('iz').
itz('ix').

ech('ēch').
ech('et').
ech('ez').
ech('ex').

% Dyadic valence position 1 (va1)
va1_dyadic('c').
va1_dyadic('qu').
va1_dyadic('qui').
va1_dyadic('m').
va1_dyadic('am').
va1_dyadic('n').
va1_dyadic('t').

% Dyadic valence position 2 (va2) - depends on va1
% Third person va1 ('c', 'qu', 'qui')
va2_dyadic('c', '').
va2_dyadic('qu', '').
va2_dyadic('qui', '').
va2_dyadic('qu', Im) :- im(Im).

% Non-third person va1
va2_dyadic('m', Itz) :- itz(Itz).
va2_dyadic('am', Ech) :- ech(Ech).
va2_dyadic('n', Ech) :- ech(Ech).
va2_dyadic('t', Ech) :- ech(Ech).

% Reflexive va2
va2_dyadic('n', 'o').
va2_dyadic('m', 'o').
va2_dyadic('t', 'o').

% Monadic valence position
va1_monadic('ne').
va1_monadic('tē').
va1_monadic('tla').

% ============================================================================
% VNC PARADIGMS from APPENDIX A
% ============================================================================
% valid_combo(Pers1, StemType, Tns, Num1, Num2, ClassList)

% I. VNCs on the Imperfective Active Stem

% 1. The indicative tenses on the imperfect active stem

% Present indicative
valid_combo(pers_ni, imperfective, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, '', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, '', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', '', 'h', [a1, a2, b, c, d]).

% Customary present indicative
valid_combo(pers_ni, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).

% Imperfect indicative
valid_combo(pers_ni, imperfective, 'ya', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ya', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ya', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ya', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, 'ya', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ya', '', 'h', [a1, a2, b, c, d]).

% Future indicative
valid_combo(pers_ni, hypothetical, 'z', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, 'z', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, 'z', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, 'z', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_an, hypothetical, 'z', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, 'z', 'qu', 'eh', [a1, a2, b, c, d]).

% 2. The optative tenses on the imperfective active stem

% Nonpast optative
valid_combo(pers_ni, hypothetical, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_xi, hypothetical, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, '', 'c', 'ān', [a1, a2, b, c, d]).
valid_combo(pers_xi, hypothetical, '', 'c', 'ān', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, '', 'c', 'ān', [a1, a2, b, c, d]).

% Past optative
valid_combo(pers_ni, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_xi, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_xi, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).

% Future optative is identical to future indicative

% II. VNCs on the Perfective Active Stem

% 1. The indicative tenses on the perfective active stem

% Preterit indicative
valid_combo(pers_ni, perfective, '', 'c', '', [a1, a2]).            valid_combo(pers_ni, perfective, '', '', '', [b, c, d]).
valid_combo(pers_ti, perfective, '', 'c', '', [a1, a2]).            valid_combo(pers_ti, perfective, '', '', '', [b, c, d]).
valid_combo(pers_zero, perfective, '', 'c', '', [a1, a2]).          valid_combo(pers_zero, perfective, '', '', '', [b, c, d]).
valid_combo(pers_ti, perfective, '', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_an, perfective, '', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_zero, perfective, '', 'qu', 'eh', [a1, a2, b, c, d]).

% Distant-past indicative
valid_combo(pers_ni, perfective, 'ca', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, perfective, 'ca', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, perfective, 'ca', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, perfective, 'ca', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_an, perfective, 'ca', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, perfective, 'ca', '', 'h', [a1, a2, b, c, d]).

% Preterit optative is identical to preterit indicative

% 2. The optative tense on the perfective active stem

% The optative tense is identical to the preterit indicative

% 3. The admonitive tense on the perfective active stem

% Present admonitive
valid_combo(pers_ni, perfective, 'h', '', '', [a1, a2]).        valid_combo(pers_ni, perfective, '', '', '', [b, c, d]).
valid_combo(pers_ti, perfective, 'h', '', '', [a1, a2]).        valid_combo(pers_ti, perfective, '', '', '', [b, c, d]).
valid_combo(pers_zero, perfective, 'h', '', '', [a1, a2]).      valid_combo(pers_zero, perfective, '', '', '', [b, c, d]).
valid_combo(pers_ti, perfective, 'h', 't', plural_suffix_in, [a1, a2]).     valid_combo(pers_ti, perfective, '', 't', plural_suffix_in, [b, c, d]).
valid_combo(pers_an, perfective, 'h', 't', plural_suffix_in, [a1, a2]).     valid_combo(pers_an, perfective, '', 't', plural_suffix_in, [b, c, d]).
valid_combo(pers_zero, perfective, 'h', 't', plural_suffix_in, [a1, a2]).   valid_combo(pers_zero, perfective, '', 't', plural_suffix_in, [b, c, d]).

/*
This section is commented out because I've chosen not to implement Verbstems, for now.
E.g. instead of chicāhua being a Class A verbstem built as chic-ā-hua, it will just be defined as a chicāhua in the lexicon.
So the concept of stem+hua or stem+lo is not needed for now.

% III. VNCs on the Imperfective Nonactive Stem

% 1. The indicative tenses on the imperfective nonactive stem

% Present indicative
valid_combo(pers_ni, append(imperfective, 'hua'), '', '', '', [a1]). valid_combo(pers_ni, append(imperfective, 'lo'), '', '', '', [a2]). valid_combo(pers_ni, append(imperfective, 'o'), '', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), '', '', '', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), '', '', '', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), '', '', '', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), '', '', '', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), '', '', '', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), '', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), '', '', 'h', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), '', '', 'h', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), '', '', 'h', [a2]).
valid_combo(pers_an, append(imperfective, 'hua'), '', '', 'h', [a1]). valid_combo(pers_an, append(imperfective, 'lo'), '', '', 'h', [a2]). valid_combo(pers_an, append(imperfective, 'o'), '', '', 'h', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), '', '', 'h', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), '', '', 'h', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), '', '', 'h', [a2]).

% Customary present indicative
valid_combo(pers_ni, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_ni, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_ni, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), 'ni', '', 'h', [a2]).
valid_combo(pers_an, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_an, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_an, append(imperfective, 'o'), 'ni', '', 'h', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ni', '', 'h', [a2]).

% Imperfect indicative
valid_combo(pers_ni, append(imperfective, 'hua'), 'ya', '', '', [a1]). valid_combo(pers_ni, append(imperfective, 'lo'), 'ya', '', '', [a2]). valid_combo(pers_ni, append(imperfective, 'o'), 'ya', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), 'ya', '', '', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), 'ya', '', '', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), 'ya', '', '', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ya', '', '', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ya', '', '', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ya', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), 'ya', '', 'h', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), 'ya', '', 'h', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), 'ya', '', 'h', [a2]).
valid_combo(pers_an, append(imperfective, 'hua'), 'ya', '', 'h', [a1]). valid_combo(pers_an, append(imperfective, 'lo'), 'ya', '', 'h', [a2]). valid_combo(pers_an, append(imperfective, 'o'), 'ya', '', 'h', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ya', '', 'h', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ya', '', 'h', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ya', '', 'h', [a2]).

% Future indicative
valid_combo(pers_ni, append(hypothetical, 'hua'), 'z', '', '', [a1]). valid_combo(pers_ni, append(hypothetical, 'lo'), 'z', '', '', [a2]). valid_combo(pers_ni, append(hypothetical, 'o'), 'z', '', '', [a2]).
valid_combo(pers_ti, append(hypothetical, 'hua'), 'z', '', '', [a1]). valid_combo(pers_ti, append(hypothetical, 'lo'), 'z', '', '', [a2]). valid_combo(pers_ti, append(hypothetical, 'o'), 'z', '', '', [a2]).
valid_combo(pers_zero, append(hypothetical, 'hua'), 'z', '', '', [a1]). valid_combo(pers_zero, append(hypothetical, 'lo'), 'z', '', '', [a2]). valid_combo(pers_zero, append(hypothetical, 'o'), 'z', '', '', [a2]).
valid_combo(pers_ti, append(hypothetical, 'hua'), 'z', 'qu', 'eh', [a1]). valid_combo(pers_ti, append(hypothetical, 'lo'), 'z', 'qu', 'eh', [a2]). valid_combo(pers_ti, append(hypothetical, 'o'), 'z', 'qu', 'eh', [a2]).
valid_combo(pers_an, append(hypothetical, 'hua'), 'z', 'qu', 'eh', [a1]). valid_combo(pers_an, append(hypothetical, 'lo'), 'z', 'qu', 'eh', [a2]). valid_combo(pers_an, append(hypothetical, 'o'), 'z', 'qu', 'eh', [a2]).
valid_combo(pers_zero, append(hypothetical, 'hua'), 'z', 'qu', 'eh', [a1]). valid_combo(pers_zero, append(hypothetical, 'lo'), 'z', 'qu', 'eh', [a2]). valid_combo(pers_zero, append(hypothetical, 'o'), 'z', 'qu', 'eh', [a2]).

% 2. The optative tenses on the imperfective nonactive stem

% Nonpast optative
valid_combo(pers_ni, append(hypothetical, 'hua'), '', '', '', [a1]). valid_combo(pers_ni, append(hypothetical, 'lo'), '', '', '', [a2]). valid_combo(pers_ni, append(hypothetical, 'o'), '', '', '', [a2]).
valid_combo(pers_xi, append(hypothetical, 'hua'), '', '', '', [a1]). valid_combo(pers_xi, append(hypothetical, 'lo'), '', '', '', [a2]). valid_combo(pers_xi, append(hypothetical, 'o'), '', '', '', [a2]).
valid_combo(pers_zero, append(hypothetical, 'hua'), '', '', '', [a1]). valid_combo(pers_zero, append(hypothetical, 'lo'), '', '', '', [a2]). valid_combo(pers_zero, append(hypothetical, 'o'), '', '', '', [a2]).
valid_combo(pers_ti, append(hypothetical, 'hua'), '', 'c', 'ān', [a1]). valid_combo(pers_ti, append(hypothetical, 'lo'), '', 'c', 'ān', [a2]). valid_combo(pers_ti, append(hypothetical, 'o'), '', 'c', 'ān', [a2]).
valid_combo(pers_xi, append(hypothetical, 'hua'), '', 'c', 'ān', [a1]). valid_combo(pers_xi, append(hypothetical, 'lo'), '', 'c', 'ān', [a2]). valid_combo(pers_xi, append(hypothetical, 'o'), '', 'c', 'ān', [a2]).
valid_combo(pers_zero, append(hypothetical, 'hua'), '', 'c', 'ān', [a1]). valid_combo(pers_zero, append(hypothetical, 'lo'), '', 'c', 'ān', [a2]). valid_combo(pers_zero, append(hypothetical, 'o'), '', 'c', 'ān', [a2]).

% Past optative
valid_combo(pers_ni, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_ni, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_ni, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_xi, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_xi, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_xi, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ni', '', '', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ni', '', '', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ni', '', '', [a2]).
valid_combo(pers_ti, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_ti, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_ti, append(imperfective, 'o'), 'ni', '', 'h', [a2]).
valid_combo(pers_xi, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_xi, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_xi, append(imperfective, 'o'), 'ni', '', 'h', [a2]).
valid_combo(pers_zero, append(imperfective, 'hua'), 'ni', '', 'h', [a1]). valid_combo(pers_zero, append(imperfective, 'lo'), 'ni', '', 'h', [a2]). valid_combo(pers_zero, append(imperfective, 'o'), 'ni', '', 'h', [a2]).

% Future optative is identical to future indicative

% IV. VNCs on the Perfective Nonactive Stem

% 1. The indicative tenses on the perfective nonactive stem

% Preterit indicative
valid_combo(pers_ni, append(perfective, 'hua'), '', 'c', '', [a1]). valid_combo(pers_ni, append(perfective, 'lo'), '', 'c', '', [a2]). valid_combo(pers_ni, append(perfective, 'o'), '', 'c', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), '', 'c', '', [a1]). valid_combo(pers_ti, append(perfective, 'lo'), '', 'c', '', [a2]). valid_combo(pers_ti, append(perfective, 'o'), '', 'c', '', [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), '', 'c', '', [a1]). valid_combo(pers_zero, append(perfective, 'lo'), '', 'c', '', [a2]). valid_combo(pers_zero, append(perfective, 'o'), '', 'c', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), '', 'qu', 'eh', [a1]). valid_combo(pers_ti, append(perfective, 'lo'), '', 'qu', 'eh', [a2]). valid_combo(pers_ti, append(perfective, 'o'), '', 'qu', 'eh', [a2]).
valid_combo(pers_an, append(perfective, 'hua'), '', 'qu', 'eh', [a1]). valid_combo(pers_an, append(perfective, 'lo'), '', 'qu', 'eh', [a2]). valid_combo(pers_an, append(perfective, 'o'), '', 'qu', 'eh', [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), '', 'qu', 'eh', [a1]). valid_combo(pers_zero, append(perfective, 'lo'), '', 'qu', 'eh', [a2]). valid_combo(pers_zero, append(perfective, 'o'), '', 'qu', 'eh', [a2]).

% Distant-past indicative
valid_combo(pers_ni, append(perfective, 'hua'), 'ca', '', '', [a1]). valid_combo(pers_ni, append(perfective, 'lo'), 'ca', '', '', [a2]). valid_combo(pers_ni, append(perfective, 'o'), 'ca', '', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), 'ca', '', '', [a1]). valid_combo(pers_ti, append(perfective, 'lo'), 'ca', '', '', [a2]). valid_combo(pers_ti, append(perfective, 'o'), 'ca', '', '', [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), 'ca', '', '', [a1]). valid_combo(pers_zero, append(perfective, 'lo'), 'ca', '', '', [a2]). valid_combo(pers_zero, append(perfective, 'o'), 'ca', '', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), 'ca', '', 'h', [a1]). valid_combo(pers_ti, append(perfective, 'lo'), 'ca', '', 'h', [a2]). valid_combo(pers_ti, append(perfective, 'o'), 'ca', '', 'h', [a2]).
valid_combo(pers_an, append(perfective, 'hua'), 'ca', '', 'h', [a1]). valid_combo(pers_an, append(perfective, 'lo'), 'ca', '', 'h', [a2]). valid_combo(pers_an, append(perfective, 'o'), 'ca', '', 'h', [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), 'ca', '', 'h', [a1]). valid_combo(pers_zero, append(perfective, 'lo'), 'ca', '', 'h', [a2]). valid_combo(pers_zero, append(perfective, 'o'), 'ca', '', 'h', [a2]).

% 2. The optative tense on the perfective nonactive stem

% The optative tense is identical to the preterit indicative

% 3. The admonitive tense on the perfective nonactive stem

% Present admonitive
valid_combo(pers_ni, append(perfective, 'hua'), 'h', '', '', [a1]). valid_combo(pers_ni, append(perfective, 'lo'), 'h', '', '', [a2]). valid_combo(pers_ni, append(perfective, 'o'), 'h', '', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), 'h', '', '', [a1]). valid_combo(pers_ti, append(perfective, 'lo'), 'h', '', '', [a2]). valid_combo(pers_ti, append(perfective, 'o'), 'h', '', '', [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), 'h', '', '', [a1]). valid_combo(pers_zero, append(perfective, 'lo'), 'h', '', '', [a2]). valid_combo(pers_zero, append(perfective, 'o'), 'h', '', '', [a2]).
valid_combo(pers_ti, append(perfective, 'hua'), 'h', 't', plural_suffix_in, [a1]). valid_combo(pers_ti, append(perfective, 'lo'), 'h', 't', plural_suffix_in, [a2]). valid_combo(pers_ti, append(perfective, 'o'), 'h', 't', plural_suffix_in, [a2]).
valid_combo(pers_an, append(perfective, 'hua'), 'h', 't', plural_suffix_in, [a1]). valid_combo(pers_an, append(perfective, 'lo'), 'h', 't', plural_suffix_in, [a2]). valid_combo(pers_an, append(perfective, 'o'), 'h', 't', plural_suffix_in, [a2]).
valid_combo(pers_zero, append(perfective, 'hua'), 'h', 't', plural_suffix_in, [a1]). valid_combo(pers_zero, append(perfective, 'lo'), 'h', 't', plural_suffix_in, [a2]). valid_combo(pers_zero, append(perfective, 'o'), 'h', 't', plural_suffix_in, [a2]).
*/

% ============================================================================
% COMPOUND VERB STEMS
% ============================================================================

% Definition of compound verb stems
compound_verb_stem(future_embed_compound(HypotheticalStem, PassiveMarker, MatrixStem), Class, TransitivityType) :-
    verb_stem(_, _, _, HypotheticalStem, _, TransitivityType), % Get hypothetical stem
    (PassiveMarker = '' ; PassiveMarker = 'lō' ; PassiveMarker = 'ō'),
    (MatrixStem = 'nequi' ; MatrixStem = 'qui'),
    Class = b. % Both nequi and qui are class b

% Stub for shared object compound - to be implemented
compound_verb_stem(shared_object_compound(_), _, _) :- false.

% Stub for recursive compound - to be implemented
compound_verb_stem(recursive_compound(_), _, _) :- false.

% ============================================================================
% STEM SHORTENING
% ============================================================================

% Shorten stem if it ends in long vowel and followed by nothing or only 'h'
shorten_stem(Stem, Rest, ShortenedStem) :-
    (Rest = '' ; Rest = 'h'),
    atom_chars(Stem, Chars),
    reverse(Chars, [LastChar|RevRest]),
    member([LastChar, ShortChar], [['ā','a'], ['ē','e'], ['ī','i'], ['ō','o'], ['ū','u']]),
    !,
    reverse([ShortChar|RevRest], ShortenedChars),
    atom_chars(ShortenedStem, ShortenedChars).
shorten_stem(Stem, _, Stem).

% ============================================================================
% PERSON PREFIX HANDLING
% ============================================================================

% Get person prefix value, considering vowel coalescence
get_pers_value(PersType, StemAtom, PersValue) :-
    call(PersType, BasePers),
    atom_chars(StemAtom, [FirstChar|_]),
    (   member(FirstChar, [a,e,i,o,u,'ā','ē','ī','ō','ū']),
        atom_chars(BasePers, BaseChars),
        (BaseChars = [] -> PersValue = BasePers
        ; reverse(BaseChars, [LastPersChar|_]),
          member(LastPersChar, [i,n,t,m,x])
        -> atom_chars(PersValue, [LastPersChar])  % Use shortened form before vowel
        ;  PersValue = BasePers)
    ;   PersValue = BasePers).

% ============================================================================
% VNC FORMULAS
% ============================================================================

% Intransitive VNC: pers1+[dir](STEM)tns+num1-num2
parse_intransitive(Word, Parse) :-
    valid_combo(PersType, StemType, Tns, Num1, Num2, Classes),
    get_final_stem(StemType, _, _, _, Verb, Class, Stem, intransitive),  % Must be intransitive
    member(Class, Classes),
    get_pers_value(PersType, Stem, Pers1),
    (Dir1 = '' ; dir(Dir1)),
    atom_concat(Tns, Num1, Rest1),
    atom_concat(Rest1, Num2, Rest),
    shorten_stem(Stem, Rest, FinalStem),
    atom_concat(Pers1, Dir1, P1Final),
    atom_concat(P1Final, FinalStem, P2Final),
    atom_concat(P2Final, Tns, P3Final),
    atom_concat(P3Final, Num1, P4Final),
    atom_concat(P4Final, Num2, Word),
    Parse = intransitive(verb:Verb, pers1:Pers1, dir:Dir1, stem:FinalStem, 
                         stem_type:StemType, tns:Tns, num1:Num1, num2:Num2).

% Monadic Transitive VNC: pers1+[dir]+va1+[dir](STEM)tns+num1-num2
parse_monadic(Word, Parse) :-
    valid_combo(PersType, StemType, Tns, Num1, Num2, Classes),
    get_final_stem(StemType, _, _, _, Verb, Class, Stem, transitive),  % Must be transitive
    member(Class, Classes),
    get_pers_value(PersType, Stem, Pers1),
    (Dir1 = '' ; dir(Dir1)),
    va1_monadic(Va1),
    (Dir2 = '' ; dir(Dir2)),
    \+ (Dir1 \= '', Dir2 \= ''),  % Dir cannot be in both positions
    atom_concat(Tns, Num1, Rest1),
    atom_concat(Rest1, Num2, Rest),
    shorten_stem(Stem, Rest, FinalStem),
    atom_concat(Pers1, Dir1, P1Final),
    atom_concat(P1Final, Va1, P2Final),
    atom_concat(P2Final, Dir2, P3Final),
    atom_concat(P3Final, FinalStem, P4Final),
    atom_concat(P4Final, Tns, P5Final),
    atom_concat(P5Final, Num1, P6Final),
    atom_concat(P6Final, Num2, Word),
    Parse = monadic(verb:Verb, pers1:Pers1, dir1:Dir1, va1:Va1, dir2:Dir2, 
                    stem:FinalStem, stem_type:StemType, tns:Tns, num1:Num1, num2:Num2).

% Dyadic Transitive VNC: pers1+[dir]+va1-va2+[dir](STEM)tns+num1-num2
parse_dyadic(Word, Parse) :-
    valid_combo(PersType, StemType, Tns, Num1, Num2, Classes),
    get_final_stem(StemType, _, _, _, Verb, Class, Stem, transitive),  % Must be transitive
    member(Class, Classes),
    get_pers_value(PersType, Stem, Pers1),
    (Dir1 = '' ; dir(Dir1)),
    va1_dyadic(Va1),
    va2_dyadic(Va1, Va2),
    (Dir2 = '' ; dir(Dir2)),
    \+ (Dir1 \= '', Dir2 \= ''),  % Dir cannot be in both positions
    atom_concat(Tns, Num1, Rest1),
    atom_concat(Rest1, Num2, Rest),
    shorten_stem(Stem, Rest, FinalStem),
    atom_concat(Pers1, Dir1, P1Final),
    atom_concat(P1Final, Va1, P2Final),
    atom_concat(P2Final, Va2, P3Final),
    atom_concat(P3Final, Dir2, P4Final),
    atom_concat(P4Final, FinalStem, P5Final),
    atom_concat(P5Final, Tns, P6Final),
    atom_concat(P6Final, Num1, P7Final),
    atom_concat(P7Final, Num2, Word),
    Parse = dyadic(verb:Verb, pers1:Pers1, dir1:Dir1, va1:Va1, va2:Va2, dir2:Dir2,
                   stem:FinalStem, stem_type:StemType, tns:Tns, num1:Num1, num2:Num2).

% Helper to select stem based on type
select_stem(imperfective, ImpStem, _, _, ImpStem).
select_stem(perfective, _, PerfStem, _, PerfStem).
select_stem(hypothetical, _, _, HypStem, HypStem).

% Helper to build future embed compound stem
build_future_embed_compound(HypStem, PassiveMark, MatrixStem, CompoundStem) :-
    (PassiveMark = '' ; PassiveMark = 'lō' ; PassiveMark = 'ō'),
    atom_concat(PassiveMark, 'z', Temp1),
    atom_concat(HypStem, Temp1, Temp2),
    atom_concat(Temp2, MatrixStem, CompoundStem).

% Helper to get final stem (either regular or compound)
get_final_stem(StemType, ImpStem, PerfStem, HypStem, Verb, Class, FinalStem, TransitivityType) :-
    (   % Regular verb stem
        verb_stem(Verb, ImpStem, PerfStem, HypStem, Class, TransitivityType),
        select_stem(StemType, ImpStem, PerfStem, HypStem, FinalStem)
    ;   % Future embed compound
        StemType = imperfective,  % Matrix verb must be in imperfective
        verb_stem(_, MatrixStem, _, _, b, transitive),  % Matrix verb details
        (MatrixStem = 'nequi' ; MatrixStem = 'qui'),
        verb_stem(Verb, _, _, HypStem, _, TransitivityType),  % Embed verb details
        (PassiveMark = '' ; PassiveMark = 'lō' ; PassiveMark = 'ō'),
        build_future_embed_compound(HypStem, PassiveMark, MatrixStem, FinalStem),
        Class = b  % Both nequi and qui are class b
    ).

% ============================================================================
% MAIN PARSE PREDICATE
% ============================================================================

parse(Word, Parse) :-
    (   parse_particle(Word, Parse)
    ;   parse_dyadic(Word, Parse)
    ;   parse_monadic(Word, Parse)
    ;   parse_intransitive(Word, Parse)
    ).


% ============================================================================
% MACRONIZATION
% ============================================================================

% Map between plain and macroned vowels
plain_vowel(a).
plain_vowel(e).
plain_vowel(i).
plain_vowel(o).
plain_vowel(u).

vowel_variants(a, [a, 'ā']).
vowel_variants(e, [e, 'ē']).
vowel_variants(i, [i, 'ī']).
vowel_variants(o, [o, 'ō']).
vowel_variants(u, [u, 'ū']).

% Generate all possible macronizations of a character list
macronize_chars([], []).
macronize_chars([C|Rest], [V|MacRest]) :-
    (   vowel_variants(C, Variants),
        member(V, Variants)
    ;   \+ plain_vowel(C),
        V = C
    ),
    macronize_chars(Rest, MacRest).

% Main predicate: find all valid macronizations
find_valid_macronizations(PlainWord, ValidMacronizations) :-
    atom_chars(PlainWord, PlainChars),
    findall(MacWord-Parse,
            (macronize_chars(PlainChars, MacChars),
             atom_chars(MacWord, MacChars),
             parse(MacWord, Parse)),
            Results),
    sort(Results, ValidMacronizations).

% Simpler version that just returns the words
find_macronizations(PlainWord, MacronizedWords) :-
    findall(MacWord,
            (atom_chars(PlainWord, PlainChars),
             macronize_chars(PlainChars, MacChars),
             atom_chars(MacWord, MacChars),
             parse(MacWord, _)),
            AllWords),
    sort(AllWords, MacronizedWords).

% ============================================================================
% EXAMPLE QUERIES
% ============================================================================
% ?- parse(nitemo, P).
% ?- parse(nihcuiloa, P).  
% ?- parse(nitemoc, P).
% ?- parse(nihcuiloh, P).
% ?- findall(P, parse(nitemo, P), Parses).
% Find all valid macronizations with their parses
%?- find_valid_macronizations(nitemo, Results).

% Find just the macronized words
%?- find_macronizations(nitemo, Words).

% If you want to see the parses nicely:
%?- find_valid_macronizations(nitemo, Results),
%   member(Word-Parse, Results),
%   format('~w: ~w~n', [Word, Parse]).