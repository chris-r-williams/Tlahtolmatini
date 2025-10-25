:- encoding(utf8).

% This Prolog program is part of Tlahtolmatini, a morphological analyzer for Nahuatl
% which is distributed under the MIT License.

% Copyright (c) 2025-present Chris Ryan Williams

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

% Based on Andrews' Introduction to Classical Nahuatl

% ============================================================================
% TOP-LEVEL VOCABLE DEFINITION
% ============================================================================

% Vocable can be either an expanded particle or a nuclear clause
vocable(Vocable, Parse) :-
    ( expanded_particle(Vocable, Parse)
    ; nuclear_clause(Vocable, Parse)
    ).

% Top-level parse predicate
parse(SurfaceVocable, Parse) :-
    surface_to_underlying(SurfaceVocable, UnderlyingVocable),
    vocable(UnderlyingVocable, Parse).

% ============================================================================
% PHONOLOGICAL RULE: FINAL VOWEL SHORTENING
% ============================================================================
% This predicate generates potential underlying forms from a surface form
% based on the rule that final long vowels (V̄) or final V̄h shorten.
% We are reversing this: a surface V or Vh could be an underlying V̄ or V̄h.

% Vowel mappings
long_vowel('a', 'ā').
long_vowel('e', 'ē').
long_vowel('i', 'ī').
long_vowel('o', 'ō').

% surface_to_underlying(Surface, Underlying)
% A surface form can always be its own underlying form (no change)
surface_to_underlying(Surface, Surface).

% Rule 1: ...V# -> ...V̄# (Reversed)
% A surface form ending in a short vowel could come from an underlying
% form ending in a long vowel.
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Root, ShortV, Surface),
    long_vowel(ShortV, LongV),
    atom_concat(Root, LongV, Underlying).

% Rule 2: ...Vh# -> ...V̄h# (Reversed)
% A surface form ending in Vh could come from an underlying V̄h.
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Root, ShortVh, Surface),
    atom_concat(ShortV, 'h', ShortVh),
    long_vowel(ShortV, LongV),
    atom_concat(LongV, 'h', LongVh),
    atom_concat(Root, LongVh, Underlying).

% ============================================================================
% EXPANDED PARTICLE
% ============================================================================

% An expanded particle can be a particle plus a negativizing prefix, an honorific suffix, or neither
expanded_particle(Vocable, [negativizing_prefix, Particle]) :-
    negativizing_prefix(Prefix),
    particle(Particle),
    atom_concat(Prefix, Particle, Vocable).
expanded_particle(Vocable, [Particle, honorific]) :-
    particle(Particle),
    honorific(Hon),
    atom_concat(Particle, Hon, Vocable).
expanded_particle(Vocable, Particle) :-
    particle(Particle),
    Vocable = Particle.

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

antecessive_order_prefix('ō').

% ============================================================================
% NUCLEAR CLAUSE
% ============================================================================

% A nuclear clause can be an expanded VNC or an NNC (not yet implemented)
nuclear_clause(Vocable, Parse) :-
    ( expanded_vnc(Vocable, Parse)
    ; nnc(Vocable, Parse)  % Stub for now
    ).

% An expanded VNC can have a negativizing prefix or not
expanded_vnc(Vocable, [negativizing_prefix, antecessive_order_prefix, VNC]) :-
    negativizing_prefix(Prefix1),
    antecessive_order_prefix(Prefix2),
    atom_concat(Prefix1, Prefix2, Prefix),
    atom_concat(Prefix, Rest, Vocable),
    vnc(Rest, VNC).
expanded_vnc(Vocable, [negativizing_prefix, VNC]) :-
    negativizing_prefix(Prefix),
    atom_concat(Prefix, Rest, Vocable),
    vnc(Rest, VNC).
expanded_vnc(Vocable, [antecessive_order_prefix, VNC]) :-
    antecessive_order_prefix(Prefix),
    atom_concat(Prefix, Rest, Vocable),
    vnc(Rest, VNC).
expanded_vnc(Vocable, Parse) :-
    vnc(Vocable, Parse).

% A VNC can be either intransitive or transitive
vnc(Vocable, Parse) :-
    ( intransitive_vnc(Vocable, Parse)
    ; transitive_vnc(Vocable, Parse)
    ).

% ============================================================================
% VERB STEM TYPES
% ============================================================================
% verb_stem_type(Verb, ImperfectiveStem, PerfectiveStem, HypotheticalStem, Class, TransitivityType)

verb_stem_type(temo, 'temō', 'temōc', 'temō', a2, intransitive).
verb_stem_type(ihcuiloa, 'ihcuiloā', 'ihcuiloh', 'ihcuilō', c, transitive).
verb_stem_type(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, transitive).
verb_stem_type(chicahua, 'chicāhua', 'chicāhuac', 'chicāhua', b, intransitive).
verb_stem_type(chihua, 'chīhua', 'chīhuac', 'chīhuā', b, transitive).
verb_stem_type(tlazohtla, 'tlazohtlā', 'tlazohtlac', 'tlazohtlā', b, transitive).
verb_stem_type(zoma, 'zōmā', 'zōmah', 'zōmā', b, transitive).
verb_stem_type(choloa, 'choloā', 'choloh', 'cholō', c, intransitive).
verb_stem_type(pano, 'panō', 'panōc', 'panō', b, intransitive).
verb_stem_type(nequi, 'nequi', 'nec', 'nequi', b, transitive).
verb_stem_type(qui, 'qui', 'quic', 'qui', b, transitive).
verb_stem_type(cochi, 'cochi', 'cochic', 'cochi', a1, intransitive).
verb_stem_type(cuica, 'cuīca', 'cuīcac', 'cuīca', b, intransitive).
verb_stem_type(cua, 'cuā', 'cuah', 'cuā', b, transitive).

% ============================================================================
% TENSE MARKERS
% ============================================================================

% Present tense
tense('').

% Future tense
tense('z').

% Customary tense
tense('ni').

% Past tenses
tense('ya').  % Imperfect
tense('ca').  % Distant past

% Other tenses
tense('h').   % Admonitive

% Basic predicates
negativizing_prefix('ah').
negativizing_prefix('ca').

honorific('tzin').

passive_marker('lō').
passive_marker('ō').

% For use with compound stems, only the non-empty forms are 'optional'
%passive_marker_optional(PassiveMarkerStr) :- passive_marker(PassiveMarkerStr).
%passive_marker_optional('').

% Person markers
pers1(pers_zero).
pers1(pers_ni).
pers1(pers_ti).
pers1(pers_an).
pers1(pers_xi).

% Person prefix mapping
pers_ni('ni').
pers_ni('n').
pers_ti('ti').
pers_ti('t').
pers_an('an').
pers_an('am').
pers_xi('xi').
pers_xi('x').
pers_zero('').

plural_suffix_in('in').
plural_suffix_in('ih').

num1('').
num1('qu').
num1('c').
num1('t').

num2('').
num2('h').
num2('ān').
num2('eh').
num2(plural_suffix_in).


% Numbers structure
nums([Num1, Num2]) :-
    num1(Num1),
    num2(Num2).

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

directional_prefix('huāl').
directional_prefix('on').

% parse_vnc_root(Root, StemStr, PrefixStructure)
% Handles the optional directional prefix before the stem
parse_vnc_root(Root, StemStr, directional_prefix(Prefix)) :-
    directional_prefix(Prefix),
    atom_concat(Prefix, StemStr, Root).
parse_vnc_root(Root, StemStr, no_directional_prefix) :-
    StemStr = Root.

% valence_precedes_dir(ValenceType)
% True if Dir comes AFTER Valence (i.e., the default case)
valence_precedes_dir(ValenceType) :-
    \+ dir_precedes_valence(ValenceType).

% dir_precedes_valence(ValenceType)
% True if Dir comes BEFORE Valence (the special case)
dir_precedes_valence(ValenceType) :-
    % Case 1: Monadic ('tē' or 'tla') with empty va2 (i.e., monadic)
    ValenceType = va(VAStr),
    member(VAStr, ['tē', 'tla']).
dir_precedes_valence(ValenceType) :-
    % Case 2: Dyadic Valence, reflexive va1 ('n', 'm', 't')
    ValenceType = [VA1, _],
    member(VA1, ['n', 'm', 't']).

% parse_valence_and_root(Rest1, ValenceType, ValenceStr, Root, PrefixStructure)
% This predicate manages the Directional Prefix placement logic.
parse_valence_and_root(Rest1, ValenceType, ValenceStr, Root, PrefixStructure) :-
    valence_type(ValenceType, ValenceStr),
    ( dir_precedes_valence(ValenceType) ->
        % PATH A: Directional Prefix is BEFORE Valence Marker (Dir + Valence + Root)
        ( directional_prefix(DirStr),
          atom_concat(DirStr, RestA, Rest1),
          atom_concat(ValenceStr, Root, RestA),
          PrefixStructure = directional_prefix(DirStr)
        ; % OR: No directional prefix (Valence + Root)
          atom_concat(ValenceStr, Root, Rest1),
          PrefixStructure = no_directional_prefix
        )
    ;
        % PATH B: Directional Prefix is AFTER Valence Marker (Valence + Dir + Root)
        atom_concat(ValenceStr, RestB, Rest1),
        parse_vnc_root(RestB, Root, PrefixStructure) % Use existing helper
    ).

% Intransitive VNC definition
% The formula for an intransitive VNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: [Dir_prefix] + Stem + Tense
% with the predicate being embedded in the subject as: Pers + ([Dir_prefix] + Stem + Tense) + Num1 + Num2
% e.g. ticochiyah - we were sleeping
% pers(ti) + ([] + stem(cochi) + tense(ya)) + num1() + num2(h)
intransitive_vnc(Vocable, vnc(Pers1Type, Predicate, Nums)) :-
    % 1. Parse person prefix (Pers)
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    
    % 2. Parse Numbers (Num1 + Num2) from the end of Rest1
    nums(Nums),
    nums_string(Nums, NumsStr),
    atom_concat(RootWithTense, NumsStr, Rest1), % Rest1 = RootWithTense + NumsStr
    
    % 3. Parse Tense (TenseStr) from the end of RootWithTense
    tense(TenseStr),
    atom_concat(Root, TenseStr, RootWithTense), % RootWithTense = Root + TenseStr
    
    % 4. Parse the Root to check for Directional Prefix and isolate StemStr
    parse_vnc_root(Root, StemStr, DirectionalPrefix),
    
    % 5. Identify Stem (StemStr) and its properties
    ( % Regular verb stem
      verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, intransitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ; % Compound stem (matrix stem is always imperfective)
      compound_stem(StemStr, StemStructure, Class, intransitive),
      StemType = imperfective
    ),
    
    % 6. Build predicate structure (now includes the optional directional prefix)
    ( DirectionalPrefix = no_directional_prefix ->
      Predicate = predicate(StemStructure, TenseStr)
    ;
      Predicate = predicate([DirectionalPrefix, StemStructure], TenseStr)
    ),
    
    % 7. Check valid combinations
    Nums = [Num1, Num2],
    valid_combo(Pers1Type, StemType, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% Transitive VNC definition
% The formula for a transitive VNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: Valence + Stem + Tense
% with the predicate being embedded in the subject as: Pers + [Dir] + Valence + [Dir] + Stem + Tense + Num1 + Num2
% e.g. ticnequiyah - we were wanting it
% pers(ti) + (valence(c) + [] + stem(nequi) + tense(ya)) + num1() + num2(h)
transitive_vnc(Vocable, vnc(Pers1Type, Predicate, Nums)) :-
    % 1. Parse person prefix (Pers)
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    
    % 2. Parse Valence, Directional Prefix, and the Root (Valence/Dir)
    % Rest1 = ([Dir] or []) + Valence + ([Dir] or []) + RootWithTense + NumsStr
    parse_valence_and_root(Rest1, ValenceType, _, RootWithTenseAndNums, DirectionalPrefix),
    
    % 3. Parse Numbers (Num1 + Num2) from the end of RootWithTenseAndNums
    nums(Nums),
    nums_string(Nums, NumsStr),
    atom_concat(RootWithTense, NumsStr, RootWithTenseAndNums), % RootWithTenseAndNums = RootWithTense + NumsStr
    
    % 4. Parse Tense (TenseStr) from the end of RootWithTense
    tense(TenseStr),
    atom_concat(StemStr, TenseStr, RootWithTense), % RootWithTense = StemStr + TenseStr
    
    % 5. Identify Stem (StemStr) and its properties
    ( % Regular verb stem
      verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, transitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ; % Compound stem (matrix stem is always imperfective)
      compound_stem(StemStr, StemStructure, Class, transitive),
      StemType = imperfective
    ),
    
    % 6. Build predicate structure (incorporating Dir prefix)
    ( DirectionalPrefix = no_directional_prefix ->
      Predicate = predicate([ValenceType, StemStructure], TenseStr)
    ;
      Predicate = predicate([DirectionalPrefix, ValenceType, StemStructure], TenseStr)
    ),
    
    % 7. Check valid combinations
    Nums = [Num1, Num2],
    valid_combo(Pers1Type, StemType, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% Helper to get person prefix string
pers_prefix(pers_ni, PersPrefix) :- pers_ni(PersPrefix).
pers_prefix(pers_zero, PersPrefix) :- pers_zero(PersPrefix).
pers_prefix(pers_ti, PersPrefix) :- pers_ti(PersPrefix).
pers_prefix(pers_an, PersPrefix) :- pers_an(PersPrefix).
pers_prefix(pers_xi, PersPrefix) :- pers_xi(PersPrefix).

% Helper to convert nums to string
nums_string([Num1, Num2], NumsStr) :-
    atom_concat(Num1, Num2, NumsStr).

% Valence type definition - now returns the string representation
valence_type(VA, VAStr) :-
    va(VAStr),
    VA = va(VAStr).
valence_type(Dyadic, DyadicStr) :-
    dyadic_valence(Dyadic, DyadicStr).

% ============================================================================
% VALENCE MARKERS
% ============================================================================

va('ne').
va('tē').
va('tla').

% Dyadic valence position 1 (va1)
va1('c').
va1('qu').
va1('qui').
va1('am').

% Reflexive va1
va1('n').
va1('m').
va1('t').

% Dyadic valence position 2 (va2) - depends on va1
% Third person va1 ('c', 'qu', 'qui')
va2('').
va2(Im) :- im(Im).

% Non-third person va1
va2(Itz) :- itz(Itz).
va2(Ech) :- ech(Ech).

% Reflexive va2
va2('o').

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

% Dyadic valence definition - includes both VA1 and its corresponding VA2
% Third person va1 ('c', 'qu', 'qui') - combines with empty or 'im' assimilations
dyadic_valence([VA1, VA2], DyadicStr) :-
    member(VA1, ['c', 'qu', 'qui']),
    (VA2 = '' ; im(VA2)),
    atom_concat(VA1, VA2, DyadicStr).

% Non-third person va1 ('am') - combines with 'itz' or 'ech' assimilations
dyadic_valence([VA1, VA2], DyadicStr) :-
    member(VA1, ['n', 't', 'am']),
    ech(VA2),
    atom_concat(VA1, VA2, DyadicStr).

% Non-third person va1 ('am') - combines with 'itz' or 'ech' assimilations
dyadic_valence([VA1, VA2], DyadicStr) :-
    VA1 = 'm',
    itz(VA2),
    atom_concat(VA1, VA2, DyadicStr).

% Reflexive combinations - any reflexive va1 with va2 'o' or none
dyadic_valence([VA1, VA2], DyadicStr) :-
    member(VA1, ['n', 'm', 't']),
    (VA2 = '' ; VA2 = 'o'),
    atom_concat(VA1, VA2, DyadicStr).

% Compound stem definition - parses the string and returns structure
compound_stem(StemStr, StemStructure, Class, Transitivity) :-
    ( future_embed(StemStr, StemStructure, Class, Transitivity)
    %; shared_object(StemStr, StemStructure, Class, Transitivity)  % TODO
    %; recursive(StemStr, StemStructure, Class, Transitivity)      % TODO
    ).

% Future embed definition
% Parses: embed_stem + [Optional passive_marker] + 'z' + matrix_stem
% Clause 1: Passive Marker is PRESENT
future_embed(StemStr, future_embed(EmbedStem, PassiveMarkerStr, 'z', MatrixStem), Class, Transitivity) :-
    % Parse embed stem (hypothetical form of any verb)
    verb_stem_type(_, _, _, EmbedStem, Class, Transitivity),
    atom_concat(EmbedStem, Rest1, StemStr),
    
    % Passive Marker is PRESENT
    passive_marker(PassiveMarkerStr),
    atom_concat(PassiveMarkerStr, Rest2, Rest1),
    
    % Parse 'z'
    atom_concat('z', Rest3, Rest2),
    
    % Parse matrix stem (must be 'nequi' or 'qui')
    matrix_stem(MatrixStem),
    Rest3 = MatrixStem.

% Clause 2: Passive Marker is ABSENT (omitted from the term structure)
future_embed(StemStr, future_embed(EmbedStem, 'z', MatrixStem), Class, Transitivity) :-
    % Parse embed stem (hypothetical form of any verb)
    verb_stem_type(_, _, _, EmbedStem, Class, Transitivity),
    atom_concat(EmbedStem, Rest1, StemStr),
    
    % Passive Marker is ABSENT: Rest1 = 'z' + MatrixStem
    
    % Parse 'z'
    atom_concat('z', Rest3, Rest1),
    
    % Parse matrix stem (must be 'nequi' or 'qui')
    matrix_stem(MatrixStem),
    Rest3 = MatrixStem.

% Matrix stems for future embed
matrix_stem('nequi').
matrix_stem('qui').

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

% Stub for NNC
nnc(_, _) :- fail.  % To be implemented later