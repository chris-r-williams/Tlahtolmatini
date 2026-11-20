:- encoding(utf8).

% This Prolog program is part of Tlahtolmatini, a morphological analyzer for Nahuatl
% which is distributed under the MIT License.

% Copyright (c) 2025-present Chris Ryan Williams

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

% This Prolog implementation of Nahuatl grammar is based on Andrews' Introduction to Classical Nahuatl

% Predicates whose clauses are defined in more than one part of the grammar.
:- discontiguous absolutive_state_nnc/2.
:- discontiguous adj_stem/1.
:- discontiguous adjective_form/1.
:- discontiguous antecessive_order_prefix/1.
:- discontiguous capital_long_vowel/2.
:- discontiguous closed_class_word/2.
:- discontiguous compound_stem/4.
:- discontiguous connective_embed/3.
:- discontiguous connective_matrix_stem/1.
:- discontiguous derived_stem/5.
:- discontiguous directional_prefix/1.
:- discontiguous dyadic_state/2.
:- discontiguous dyadic_valence/2.
:- discontiguous ech/1.
:- discontiguous expanded_nnc/2.
:- discontiguous expanded_vnc/2.
:- discontiguous im/1.
:- discontiguous intransitive_vnc/2.
:- discontiguous matrix_stem/1.
:- discontiguous nnc/2.
:- discontiguous nnc_num1/1.
:- discontiguous nonactive_stem/3.
:- discontiguous noun_embed_form/1.
:- discontiguous noun_stem_type/5.
:- discontiguous num2/1.
:- discontiguous parse/2.
:- discontiguous parse_lenient/3.
:- discontiguous parse_vnc_root/3.
:- discontiguous surface_to_underlying/2.
:- discontiguous tense/1.
:- discontiguous transitive_vnc/2.
:- discontiguous valid_combo/6.
:- discontiguous valid_nnc_combo/3.
:- discontiguous verb_stem_form/3.
:- discontiguous verb_stem_type/6.
:- discontiguous vnc/2.
:- discontiguous vowel_variants/2.

% Lexical facts (noun, verb, closed-class, adjective, nonactive) live in
% lexicon.pl, which is loaded after this file.  Grammar and morphology stay here.

% ============================================================================
% TOP-LEVEL VOCABLE DEFINITION
% ============================================================================

% Andrews does not use the term "word" for groups of letters separated by spaces
% prefering the term "vocable," because he argues that, in Nahuatl, the vocable
% holds much more meaning than what we typically think of as a "word" in English.

% A vocable can be either an expanded particle or a nuclear clause
vocable(Vocable, Parse) :-
    ( expanded_particle(Vocable, Parse)
    ; nuclear_clause(Vocable, Parse)
    ; closed_class(Vocable, Parse)
    ).

% Closed-class vocabulary and irregular word forms.
closed_class(Vocable, closed_class(Type, Vocable)) :-
    closed_class_word(Vocable, Type).

% ============================================================================
% NUCLEAR CLAUSES
% ============================================================================

% A nuclear clause can be an expanded VNC or an NNC (not yet implemented)
nuclear_clause(Vocable, Parse) :-
    ( expanded_vnc(Vocable, Parse)
    ; expanded_nnc(Vocable, Parse)  % Stub for now
    ).

% An expanded particle can be a particle plus a negativizing prefix, plus an honorific suffix, or neither
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

% ============================================================================
% VERBAL NUCLEAR CLAUSES (VNCs)
% ============================================================================

% An expanded VNC can be a VNC with a negativizing prefix and/or a negativizing prefix, or not
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
expanded_vnc(Vocable, [article, VNC]) :-
    atom_concat('in', Rest, Vocable),
    Rest \= '',
    vnc(Rest, VNC).
expanded_vnc(Vocable, Parse) :-
    vnc(Vocable, Parse).
% The antecessive ō and directional on coalesce as ōn-.
expanded_vnc(Vocable, [antecessive_order_prefix, directional_prefix('on'), VNC]) :-
    atom_concat('ōn', Rest, Vocable),
    Rest \= '',
    vnc(Rest, VNC).

% The article in is sometimes written īn before a verb (īn-hualmocuepato).
expanded_vnc(Vocable, [article, VNC]) :-
    atom_concat('īn', Rest, Vocable),
    Rest \= '',
    vnc(Rest, VNC).

% The antecessive order prefix can come before the left boundary of any VNC
antecessive_order_prefix('ō').
antecessive_order_prefix('o').  % short spelling of antecessive ō-

% A VNC can be either intransitive or transitive
vnc(Vocable, Parse) :-
    ( intransitive_vnc(Vocable, Parse)
    ; transitive_vnc(Vocable, Parse)
    ).
% The imperfect -ya is written -ia after a vowel; rewrite word-final -ia to -ya.
vnc(Vocable, Parse) :-
    atom_concat(Base, 'ia', Vocable),
    Base \= '',
    atom_concat(Base, 'ya', Rewritten),
    Rewritten \= Vocable,
    vnc(Rewritten, Parse).

% Intransitive VNC definition
% The formula for an intransitive VNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: [Dir_prefix] + Stem + Tense
% with the predicate being embedded in the subject as: Pers + ([Dir_prefix] + Stem + Tense) + Num1 + Num2
% e.g. ticochiyah - we were sleeping
% pers(ti) + ([] + stem(cochi) + tense(ya)) + num1 + num2(h)
intransitive_vnc(Vocable, vnc(Pers1Type, Predicate, Nums)) :-
% 1. Parse person prefix (Pers)
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),

% 2. Parse Numbers (Num1 + Num2) from the end of Rest1
    nums(Nums),
    nums_string(Nums, NumsStr),
    atom_concat(RootWithTense, NumsStr, Rest1),  % Rest1 = RootWithTense + NumsStr

% 3. Parse Tense (TenseStr) from the end of RootWithTense
    tense(TenseStr),
    atom_concat(Root, TenseStr, RootWithTense),  % RootWithTense = Root + TenseStr

% 4. Parse the Root to check for Directional Prefix and isolate StemStr
    parse_vnc_root(Root, StemStr, DirectionalPrefix),

% 5. Identify Stem (StemStr) and its properties
    (  % Regular verb stem
      verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, intransitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ;  % Derived verb stem (Lessons 24-27); cited in its imperfective shape
      derived_forms(StemStr, _, _, Class, intransitive),
      StemType = imperfective,
      StemStructure = StemStr
    ;  % Nonactive (passive/impersonal) stem, Lessons 20-22
      nonactive_forms(StemStr, _, _, Class, intransitive),
      StemType = imperfective,
      StemStructure = StemStr
    ;  % Compound stem (matrix stem is always imperfective)
      compound_stem(StemStr, StemStructure, Class, intransitive),
      ( StemType = imperfective
      ; StemType = hypothetical, TenseStr = 'z'
      )
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
% Reflexive object on an intransitive or compound stem (Andrews 27.3).
intransitive_vnc(Vocable,
                 vnc(pers_zero,
                     predicate([DirType, reflexive_prefix, StemStructure], TenseStr),
                     [Num1, Num2])) :-
    ( directional_prefix(Dir),
      atom_concat(Dir, Rest0, Vocable),
      DirType = directional_prefix(Dir)
    ; Rest0 = Vocable,
      DirType = no_directional_prefix
    ),
    ( member(Prefix, ['mo', 'no', 'to']),
      atom_concat(Prefix, Rest1, Rest0),
      Rest1 \= ''
    ; member(Prefix, ['m', 'n', 't']),
      atom_concat(Prefix, Rest1, Rest0),
      atom_chars(Rest1, [C|_]),
      vowel_char(C)
    ),
    nums([Num1, Num2]),
    nums_string([Num1, Num2], NumsStr),
    atom_concat(RootWithTense, NumsStr, Rest1),
    tense(TenseStr),
    atom_concat(StemStr, TenseStr, RootWithTense),
    ( verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, intransitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ; compound_stem(StemStr, StemStructure, Class, intransitive),
      ( StemType = imperfective
      ; StemType = hypothetical, TenseStr = 'z'
      )
    ),
    valid_combo(pers_zero, StemType, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% The prefix ne-/nē- before a nonactive stem (Andrews 21.3).
intransitive_vnc(Vocable,
                 vnc(pers_zero,
                     predicate([PrefixType, StemStructure], TenseStr),
                     [Num1, Num2])) :-
    member(PrefixType-Prefix, [nonspecific_reflexive-'ne',
                               nonspecific_reflexive-'nē',
                               nonspecific_object-'tē']),
    atom_concat(Prefix, Rest1, Vocable),
    Rest1 \= '',
    nums([Num1, Num2]),
    nums_string([Num1, Num2], NumsStr),
    atom_concat(RootWithTense, NumsStr, Rest1),
    tense(TenseStr),
    atom_concat(StemStr, TenseStr, RootWithTense),
    nonactive_forms(StemStr, _, _, Class, intransitive),
    StemStructure = StemStr,
    valid_combo(pers_zero, imperfective, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% Reflexive prefix on an intransitive verbstem (Andrews 27.1).
intransitive_vnc(Vocable, vnc(Pers1Type, predicate([DirectionalPrefix, reflexive(Pref), StemStructure], TenseStr), Nums)) :-
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    nums(Nums),
    Nums = [Num1, Num2],
    nums_string(Nums, NumsStr),
    atom_concat(RootWithTense, NumsStr, Rest1),
    tense(TenseStr),
    atom_concat(Root0, TenseStr, RootWithTense),
    ( directional_prefix(Dir),
      atom_concat(Dir, Root, Root0),
      DirectionalPrefix = directional_prefix(Dir)
    ; Root = Root0,
      DirectionalPrefix = no_directional_prefix
    ),
    member(Pref, ['mo', 'no', 'to']),
    atom_concat(Pref, StemStr, Root),
    StemStr \= '',
    ( verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, intransitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ; derived_forms(StemStr, _, _, Class, intransitive),
      StemType = imperfective,
      StemStructure = StemStr
    ; compound_stem(StemStr, StemStructure, Class, intransitive),
      StemType = imperfective
    ),
    valid_combo(Pers1Type, StemType, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% The person prefix is present in intransitive and transitive VNCs
% though sometimes it is a zero value (an empty string). Combined with the
% nums (num1 and num2) it determines the grammatical person and number of the verb

% Helper to get person prefix string
pers_prefix(pers_ni, PersPrefix) :- pers_ni(PersPrefix).
pers_prefix(pers_zero, PersPrefix) :- pers_zero(PersPrefix).
pers_prefix(pers_ti, PersPrefix) :- pers_ti(PersPrefix).
pers_prefix(pers_an, PersPrefix) :- pers_an(PersPrefix).
pers_prefix(pers_xi, PersPrefix) :- pers_xi(PersPrefix).

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

% The directional prefix is an optional prefix to the stem which
% contains directional information for the verb (to here, to there).
% This predicate handles the optional directional prefix before the stem
parse_vnc_root(Root, StemStr, directional_prefix(Prefix)) :-
    directional_prefix(Prefix),
    atom_concat(Prefix, StemStr, Root).
parse_vnc_root(Root, StemStr, no_directional_prefix) :-
    StemStr = Root.
% The prefix nē- after the directional huāl-.
parse_vnc_root(Root, StemStr,
               [directional_prefix('huāl'), nonspecific_object('nē')]) :-
    atom_concat('huāl', Rest, Root),
    atom_concat('nē', StemStr, Rest),
    StemStr \= ''.

% The unspecified-object prefix nē- precedes the stem.
parse_vnc_root(Root, StemStr, nonspecific_object('nē')) :-
    atom_concat('nē', StemStr, Root),
    StemStr \= ''.

% directional prefixes
directional_prefix('huāl').
directional_prefix('on').
directional_prefix('al').  % reduced huāl- (h lost), as in mitz-al-mo-maquilia
directional_prefix('an').  % assimilated form of on- before a vowel (ō-an-huāl-la-queh)
directional_prefix('hual').  % directional huāl- written hual-
directional_prefix('o').  % on reduced to o before m: c-o-manili, c-o-motlapielilia
directional_prefix('om').  % assimilated on- before m- (ommotlalico)
directional_prefix('ual').  % variant of huāl- with h lost (xicualcuicān)
directional_prefix('ō').  % assimilated on- before a consonant (Andrews 8.1)
directional_prefix('ōm').  % The directional on- assimilates to om- before m (ommicoac, ommotlāzato).
directional_prefix('ōn').  % on is written om before p (compachoqueh < c-on-pachoc-queh); before a consonant it is often written with a long vowel (quim-ōn-panahui).

% The tense is contained in a suffix to the stem
% These are the valid tense suffixes

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
tense('h').  % Admonitive
tense('c').  % Preterit of the impersonal passive in -lō-c (ōntlacocolehualoc).
tense('ia').  % The sources write the imperfect suffix -ya as -ia after i.
tense('zquia').  % Conditional: hypothetical stem + z + quia (Andrews 20.4/29.5).

% In some cases the stem is a compound of multiple stems
% There are multiple kinds of compounds, including future embed compounds
% shared object compounds, recursive compounds, and more
compound_stem(StemStr, StemStructure, Class, Transitivity) :-
    ( future_embed(StemStr, StemStructure, Class, Transitivity)
    ; connective_t(StemStr, StemStructure, Class, Transitivity)
% shared_object(StemStr, StemStructure, Class, Transitivity) TODO
    ).
% Adjective + -ti-cac 'be in a state' (chichipahuaticac, melāhuaticac).
compound_stem(Stem, compound(Adj, 'ti', 'cac'), a1, intransitive) :-
    atom_concat(Adj, 'ticac', Stem),
    Adj \= '',
    closed_class_word(Adj, adjective).

% Incorporated objects make a transitive verb intransitive (Andrews 30.1).
compound_stem(Stem, compound(Embed, Matrix), Class, intransitive) :-
    atom(Stem),
    noun_embed_form(Embed),
    atom_concat(Embed, Matrix, Stem),
    Matrix \= '',
    verb_stem_type(_, Matrix, _, _, Class, transitive).

% qu-i-uh (future sg.), qu-i-huih (future pl.). Gives quīza-co quīza-quiuh, quīza-quihuī.
compound_stem(Stem, inbound_purposive(Embed, 'c', 'o'), Class, Trans) :-
    atom_concat(Embed, 'co', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

% Inbound purposive with a Class C embed that drops its final -a (nelo-co).
compound_stem(Stem, inbound_purposive(Embed, 'c', 'o'), Class, Trans) :-
    atom_concat(Embed, 'co', Stem),
    atom_concat(Embed, 'a', Imperf),
    verb_stem_type(_, Imperf, _, _, c, Trans),
    verb_stem_type(_, Imperf, _, _, Class, Trans).

compound_stem(Stem, inbound_purposive(Embed, 'c', 'oh'), Class, Trans) :-
    atom_concat(Embed, 'coh', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, inbound_purposive(Embed, 'qu', 'ihuih'), Class, Trans) :-
    atom_concat(Embed, 'quihuih', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, inbound_purposive(Embed, 'qu', 'ihuih'), Class, Trans) :-
    atom_concat(Embed, 'quihuī', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, inbound_purposive(Embed, 'qu', 'iuh'), Class, Trans) :-
    atom_concat(Embed, 'quiuh', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, progressive_come(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Embed, 'tihuitz', Stem), Embed \= '',
    verb_stem_form(Embed, Class, Transitivity).

% "Go/come along doing" (Andrews 28.6.5): stem + tiuh / tihuitz.
compound_stem(Stem, progressive_go(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Embed, 'tiuh', Stem), Embed \= '',
    verb_stem_form(Embed, Class, Transitivity).

% Stative/progressive -toc (Andrews 28.6).
compound_stem(Stem, progressive_state(Base), Class, Transitivity) :-
    atom(Stem), atom_concat(Base, 'toc', Stem), Base \= '',
    ( verb_stem_form(Base, Class, Transitivity)
    ; nonactive_stem(Base, _, Class), Transitivity = intransitive
    ; derived_stem(Base, Class, Transitivity, _, _)
    ).

compound_stem(Stem, purposive_future(Embed, 'qu', 'i', 'huih'), Class, Transitivity) :-
    atom_concat(Embed, 'quihuih', Stem),
    Embed \= '',
    verb_hypothetical(Embed, Class, Transitivity).

% Purposive future -quiuh / -quihuih (Andrews 29.3.2: ahciquihuih).
compound_stem(Stem, purposive_future(Embed, 'qu', 'i', 'uh'), Class, Transitivity) :-
    atom_concat(Embed, 'quiuh', Stem),
    Embed \= '',
    verb_hypothetical(Embed, Class, Transitivity).

% The purposive "go to do" also uses a perfective stem (qu-ilhui-co).
compound_stem(Stem, purposive_go(Embed), Class, Transitivity) :-
    atom(Stem),
    atom_concat(Embed, 'co', Stem),
    Embed \= '',
    verb_stem_type(_, _, Embed, _, Class, Transitivity).

compound_stem(Stem, purposive_go(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Base, 'to', Stem),
    strip_final_vowel(Base, Embed),
    verb_stem_form(Embed, Class, Transitivity).

% Purposive motion "go/come to do" (Andrews 29.3): stem + (ti)co.
compound_stem(Stem, purposive_go(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Embed, 'co', Stem), Embed \= '',
    verb_stem_form(Embed, Class, Transitivity).

compound_stem(Stem, purposive_go(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Embed, 'tico', Stem), Embed \= '',
    verb_stem_form(Embed, Class, Transitivity).

compound_stem(Stem, purposive_go(Embed), Class, Transitivity) :-
    atom(Stem), atom_concat(Embed, 'to', Stem), Embed \= '',
    verb_stem_form(Embed, Class, Transitivity).

% Purposive "hither" -co (Andrews 29.3: ahcico, ommotlalico, tepehuaco). The embed is the future/hypothetical stem, with the silent future morph.
compound_stem(Stem, purposive_hither(Embed, 'c', 'o'), Class, Transitivity) :-
    atom_concat(Embed, 'co', Stem),
    Embed \= '',
    verb_hypothetical(Embed, Class, Transitivity).

compound_stem(Stem, purposive_outbound(Embed, 't', 'ihui'), Class, Trans) :-
    atom_concat(Embed, 'tihui', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, purposive_outbound(Embed, 't', 'ihui'), Class, Trans) :-
    atom_concat(Embed, 'tihuī', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

compound_stem(Stem, purposive_outbound(Embed, 't', 'ihui'), Class, Trans) :-
    atom_concat(Embed, 'tihuī', Stem),
    atom_concat(Embed, 'a', Imperf),
    verb_stem_type(_, Imperf, _, _, c, Trans),
    verb_stem_type(_, Imperf, _, _, Class, Trans).

% Outbound purposive nonpast (29.3.1): imperfective embed + t-i-uh (sg.) or t-i-hui (pl.). Gives nāmiqui-tiuh / nāmiqui-tihuī.
compound_stem(Stem, purposive_outbound(Embed, 't', 'iuh'), Class, Trans) :-
    atom_concat(Embed, 'tiuh', Stem),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Trans).

% Purposive compounds whose Class C embed loses its final -a before t (anapalotiuh).
compound_stem(Stem, purposive_outbound(Embed, 't', 'iuh'), Class, Trans) :-
    atom_concat(Embed, 'tiuh', Stem),
    atom_concat(Embed, 'a', Imperf),
    verb_stem_type(_, Imperf, _, _, c, Trans),
    verb_stem_type(_, Imperf, _, _, Class, Trans).

compound_stem(Stem, purposive_outbound(Embed, 't', 'o'), Class, Trans) :-
    atom_concat(Embed, 'to', Stem),
    atom_concat(Embed, 'a', Imperf),
    verb_stem_type(_, Imperf, _, _, c, Trans),
    verb_stem_type(_, Imperf, _, _, Class, Trans).

% Purposive outbound -to built on the future/hypothetical stem (motlalito cuetlanito). Mirrors the parser's -to clause, but requires the future stem.
compound_stem(Stem, purposive_outbound(Embed, 't', 'o'), Class, Transitivity) :-
    atom_concat(Embed, 'to', Stem),
    Embed \= '',
    verb_hypothetical(Embed, Class, Transitivity).

% Andative -co (Andrews 29.3): go somewhere and do.
compound_stem(StemStr, andative(Embed, 'c', 'o'), Class, Trans) :-
    verb_stem_type(_, Imperf, Perf, _, Class, Trans),
    ( Embed = Imperf ; Embed = Perf ),
    Embed \= '',
    atom_concat(Embed, 'co', StemStr).

compound_stem(StemStr, compound(Embed, Matrix), Class, Transitivity) :-
    noun_embed_form(Embed),
    atom_concat(Embed, Matrix, StemStr),
    Matrix \= '',
    verb_stem_type(_, Matrix, _, _, Class, Transitivity).

% Connectiveless progressive compound (Andrews 28.6.5): perfective embed + a motion matrix such as huitz. This derives ohtititi-huitz.
compound_stem(StemStr, direct_compound(Embed, Matrix), Class, Transitivity) :-
    verb_stem_type(_, _, Embed, _, Class, Transitivity),
    member(Matrix, ['huitz', 'huetz']),
    atom_concat(Embed, Matrix, StemStr).

% Progressive "go along doing" (Andrews 28.6): imperfective stem + ti + motion matrix. Needed for choca-ti-uh, quīza-ti-cac, pīpixāhui-ti-uh, etc.
compound_stem(StemStr, progressive(Embed, Matrix), Class, Transitivity) :-
    verb_stem_type(_, Embed, _, _, Class, Transitivity),
    member(Matrix, ['uh', 'hui', 'yā', 'yah', 'huitz', 'huetz',
                    'huāllah', 'huāllā', 'cac', 'cat', 'ca']),
    atom_concat(Embed, 'ti', R),
    atom_concat(R, Matrix, StemStr).

% Andrews 29.1/29.3: the purposive matrix directional is t- 'thither' or c/qu- 'hither', plus the past -o: aci-c-o, quīza-c-o, maxiti-c-o.
compound_stem(StemStr, purposive_inbound(Embed, 'c', 'o'), Class, Transitivity) :-
    atom_concat(Embed, 'co', StemStr),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Transitivity).

% Andrews 29.3.3: nonpast optative purposive stem is embed + t + i.
compound_stem(StemStr, purposive_optative(Embed), Class, Transitivity) :-
    atom_concat(Embed, 'ti', StemStr),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Transitivity).

% Purposive outbound past (Andrews 29.3.2): future/imperfective embed + t + o. nāmiqui-to, c-ō-nāmiqui-to.
compound_stem(StemStr, purposive_outbound(Embed, 't', 'o'), Class, Transitivity) :-
    atom_concat(Embed, 'to', StemStr),
    Embed \= '',
    verb_stem_type(_, Embed, _, _, Class, Transitivity).

compound_stem(StemStr, stative(Embed, 'ti', 'ca'), Class, intransitive) :-
    verb_stem_type(_, Imperf, Perf, Hyp, Class, intransitive),
    member(Embed, [Imperf, Perf, Hyp]),
    Embed \= '',
    atom_concat(Embed, 'ticac', StemStr).

% Stative/progressive compounds in -toc and -ticac (Andrews 28.6). ehuatoc 'be risen', quetzticac 'be standing'.
compound_stem(StemStr, stative(Embed, 'toc'), Class, intransitive) :-
    verb_stem_type(_, Imperf, Perf, _, Class, intransitive),
    ( Embed = Imperf ; Embed = Perf ),
    atom_concat(Embed, 'toc', StemStr).

% 28.5-28.9: connective-t compound stems

% Embed (a perfective/imperfective verbstem) + the connective t/ti + matrix.
% The embed determines the valence of the compound; the matrix determines
% the type. Matrices are the small set of verbs listed in 28.6 and 28.9.
connective_t(StemStr, connective_t(Embed, Connector, Matrix), Class, Transitivity) :-
    connective_embed(Embed, Class, Transitivity),
    atom_concat(Embed, Rest1, StemStr),
    Rest1 \= '',
    connective_morph(Connector, Rest1, Rest2),
    Rest2 \= '',
    connective_matrix(Rest2, Matrix).

connective_embed(Embed, Class, Transitivity) :-
    ( verb_stem_type(_, _, Perfective, _, Class, Transitivity),
      Embed = Perfective
    ; derived_forms(Embed, _, _, Class, Transitivity)
    ; nonactive_stem(Embed, _, Class),
      Transitivity = intransitive
    ; connective_matrix_stem(Embed),
      Class = a1,
      Transitivity = intransitive
    ).
% Class A stems use the vowel-less stem before the connective -t-/-ti (mamana > maman-ti-hui).
connective_embed(Embed, Class, Transitivity) :-
    verb_stem_type(_, Imperf, _, _, Class, Transitivity),
    member(Class, [a1, a2]),
    atom_chars(Imperf, Chars),
    append(Init, [V], Chars),
    vowel_char(V),
    atom_chars(Embed, Init).

% Andrews 28.6: a Class A perfective in -c loses that -c before the connective -t-/-ti- of a compound (pipilca-c > pipilca-ti-huitz).
connective_embed(Embed, Class, Transitivity) :-
    verb_stem_type(_, _, Perfective, _, Class, Transitivity),
    atom_concat(Embed, 'c', Perfective),
    Embed \= ''.

connective_morph('t', Rest, Rest2) :-
    atom_concat('t', Rest2, Rest),
    Rest2 \= ''.
connective_morph('ti', Rest, Rest2) :-
    atom_concat('ti', Rest2, Rest),
    Rest2 \= ''.

% Matrix stems of the intransitive-matrix compound (28.6), the
% intransitivized-reflexive-matrix compound (28.9), and recursive matrices.
connective_matrix(Rest, matrix(Rest)) :-
    connective_matrix_stem(Rest).
connective_matrix(Rest, Matrix) :-
    connective_t(Rest, Matrix, _, _).

connective_matrix_stem('ca').  % ca-h: be in the act of
connective_matrix_stem('ye').  % ca-h: nonpast optative shape
connective_matrix_stem('cat').  % ca-h before a following tense
connective_matrix_stem('nemi').  % go along (doing)
connective_matrix_stem('nen').  % nemi, perfective
connective_matrix_stem('uh').  % ya: go away (present singular)
connective_matrix_stem('hui').  % ya: go away (present plural)
connective_matrix_stem('yā').  % ya: future base
connective_matrix_stem('yah').  % ya: preterit
connective_matrix_stem('huāllah').  % huāl-la-uh: come (doing)
connective_matrix_stem('huāllā').  % huāl-la-uh: come (future base)
connective_matrix_stem('huitz').  % hui-tz: come (doing)
connective_matrix_stem('huetz').  % hui-tz / huetzi: come, fall
connective_matrix_stem('huetzi').
connective_matrix_stem('ēhua').  % rise, depart
connective_matrix_stem('eh').  % ēhua, perfective
connective_matrix_stem('quiza').  % exit
connective_matrix_stem('quiz').  % quiza, perfective
connective_matrix_stem('ahci').  % arrive
connective_matrix_stem('ahcic').  % ahci, perfective
connective_matrix_stem('oca').  % be lying
connective_matrix_stem('oc').  % oca, perfective
connective_matrix_stem('pilca').  % be hanging
connective_matrix_stem('pilcac').  % pilca, perfective
% 28.9: intransitivized-reflexive matrices
connective_matrix_stem('moteca').
connective_matrix_stem('mocāhua').
connective_matrix_stem('motlālia').
connective_matrix_stem('moman').
connective_matrix_stem('moquetza').
connective_matrix_stem('cac').  % Preterit-as-present -ti-cac 'be in a state, stand' (Andrews 28.6.8) calac-ti-cac, quīz-ti-cac, chichipāhuac-ti-cac.
connective_matrix_stem('huetzico').  % The matrix huetzico 'come falling' (HUETZ(I) + inbound -co) is lexicalized as a connective matrix (Andrews 28.6).
connective_matrix_stem('ica').  % icac 'be standing' as compound embed (ica-ti-huitz)
connective_matrix_stem('mani').  % MANI 'be located' functions as a connective-t matrix (mantiuh xoxoquiuhtimani, tlantimani).

% Future embed definition
% Parses: embed_stem + [Optional passive_marker] + 'z' + matrix_stem
% Clause 1: Passive Marker is PRESENT
future_embed(StemStr, future_embed(EmbedStem, PassiveMarkerStr, 'z', MatrixStem), Class, Transitivity) :-
% Parse embed stem (hypothetical form of any verb)
    verb_hypothetical(EmbedStem, Class, Transitivity),
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
    verb_hypothetical(EmbedStem, Class, Transitivity),
    atom_concat(EmbedStem, Rest1, StemStr),

% Passive Marker is ABSENT: Rest1 = 'z' + MatrixStem

% Parse 'z'
    atom_concat('z', Rest3, Rest1),

% Parse matrix stem (must be 'nequi' or 'qui')
    matrix_stem(MatrixStem),
    Rest3 = MatrixStem.

% Clause 3: the embed is itself a connective-t compound (28.12).
future_embed(StemStr, future_embed(EmbedStructure, 'z', MatrixStem), Class, Transitivity) :-
    atom_concat(Embed, Rest1, StemStr),
    Embed \= '',
    atom_concat('z', MatrixStem, Rest1),
    matrix_stem(MatrixStem),
    connective_t(Embed, EmbedStructure, Class, Transitivity).

% Valid passive markers
passive_marker('lō').
passive_marker('ō').

% Matrix stems for future embed
matrix_stem('nequi').
matrix_stem('qui').
matrix_stem('nequ').  % NEQUI before the imperfect -ya surfaces as nequia (not nequiia).

% The nums come at the end of the VNC, and together with
% the pers prefix, they determine the grammatical person and number

% Helper to convert nums to string
nums_string([Num1, Num2], NumsStr) :-
    atom_concat(Num1, Num2, NumsStr).

% Numbers structure
nums([Num1, Num2]) :-
    num1(Num1),
    num2(Num2).

% Valid num1 and num2 values
num1('').
num1('qu').
num1('c').
num1('t').

num2('').
num2('h').
num2('ān').
num2('eh').
num2(plural_suffix_in).
num2('e').  % attested 3pl perfect in -que (for -queh): calaque, oquizque, micque. Also 3pl present in -e (for -eh): huitze.
num2('n').  % Andrews 29.3.3: -n is a free variant of the plural number morph in the nonpast optative (xinacazcocan = xi-nacazcoca-n).

plural_suffix_in('in').
plural_suffix_in('ih').

% Transitive VNC definition
% The formula for a transitive VNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: Valence + Stem + Tense
% with the predicate being embedded in the subject as: Pers + [Dir] + Valence + [Dir] + Stem + Tense + Num1 + Num2
% e.g. ticnequiyah - we were wanting it
% pers(ti) + (valence(c) + [] + stem(nequi) + tense(ya)) + num1 + num2(h)
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
    atom_concat(RootWithTense, NumsStr, RootWithTenseAndNums),  % RootWithTenseAndNums = RootWithTense + NumsStr

% 4. Parse Tense (TenseStr) from the end of RootWithTense
    tense(TenseStr),
    atom_concat(StemStr, TenseStr, RootWithTense),  % RootWithTense = StemStr + TenseStr

% 5. Identify Stem (StemStr) and its properties
    (  % Regular verb stem
      verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, transitive),
      ( StemStr = Imperfective, StemType = imperfective, StemStructure = StemStr
      ; StemStr = Perfective, StemType = perfective, StemStructure = StemStr
      ; StemStr = Hypothetical, StemType = hypothetical, StemStructure = StemStr
      )
    ;  % Derived verb stem (Lessons 24-27); cited in its imperfective shape
      derived_forms(StemStr, _, _, Class, transitive),
      StemType = imperfective,
      StemStructure = StemStr
    ;  % Reflexive object + stem with initial supportive i (27.3.2)
% the supportive i is deleted after m-o, n-o, t-o.
      reflexive_valence(ValenceType),
      verb_stem_type(_, Imperfective, Perfective, Hypothetical, Class, transitive),
      supportive_variant(StemStr, Imperfective, Perfective, Hypothetical, StemType),
      StemStructure = StemStr
    ;  % Compound stem (matrix stem is always imperfective)
      compound_stem(StemStr, StemStructure, Class, transitive),
      ( StemType = imperfective
      ; StemType = hypothetical, TenseStr = 'z'
      )
    ),

% 6. Build predicate structure in surface order. A directional may
% precede the valence (hual-qu-i-) or follow it (qu-i-hual-).
    ( DirectionalPrefix = no_directional_prefix ->
      Predicate = predicate([ValenceType, StemStructure], TenseStr)
    ; DirectionalPrefix = directional_prefix_after_valence(Dir) ->
      Predicate = predicate([ValenceType, directional_prefix(Dir), StemStructure], TenseStr)
    ;
      Predicate = predicate([DirectionalPrefix, ValenceType, StemStructure], TenseStr)
    ),

% 7. Check valid combinations
    Nums = [Num1, Num2],
    valid_combo(Pers1Type, StemType, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).
% Nonactive stems with an object prefix in transitive VNCs.
transitive_vnc(Vocable, vnc(Pers1Type, Predicate, Nums)) :-
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    parse_valence_and_root(Rest1, ValenceType, _, RootWithTenseAndNums,
                           DirectionalPrefix),
    nums(Nums),
    nums_string(Nums, NumsStr),
    atom_concat(RootWithTense, NumsStr, RootWithTenseAndNums),
    tense(TenseStr),
    atom_concat(StemStr, TenseStr, RootWithTense),
    nonactive_forms(StemStr, _, _, Class, intransitive),
    ( DirectionalPrefix = no_directional_prefix ->
      Predicate = predicate([ValenceType, StemStr], TenseStr)
    ;
      Predicate = predicate([DirectionalPrefix, ValenceType, StemStr], TenseStr)
    ),
    Nums = [Num1, Num2],
    valid_combo(Pers1Type, imperfective, TenseStr, Num1, Num2, ClassList),
    member(Class, ClassList).

% Transitive verbs contain all the information of intransitive verbs plus
% object information which is contained in the valence positions va1 and va2
% This predicate manages the Directional Prefix placement logic.
parse_valence_and_root(Rest1, ValenceType, ValenceStr, Root, PrefixStructure) :-
    valence_type(ValenceType, ValenceStr),
    ( dir_precedes_valence(ValenceType) ->
% PATH A: Directional Prefix is BEFORE Valence Marker (Dir + Valence + Root)
        ( directional_prefix(DirStr),
          atom_concat(DirStr, RestA, Rest1),
          atom_concat(ValenceStr, Root, RestA),
          PrefixStructure = directional_prefix(DirStr)
        ;  % OR: No directional prefix (Valence + Root)
          atom_concat(ValenceStr, Root, Rest1),
          PrefixStructure = no_directional_prefix
        )
    ;
% PATH B: Directional Prefix is AFTER Valence Marker (Valence + Dir + Root)
        atom_concat(ValenceStr, RestB, Rest1),
        parse_vnc_root(RestB, Root, PrefixStructure0),
        ( PrefixStructure0 = directional_prefix(Dir) ->
            PrefixStructure = directional_prefix_after_valence(Dir)
        ;
            PrefixStructure = PrefixStructure0
        )
    ).

% Valence type definition - now returns the string representation
valence_type(VA, VAStr) :-
    va(VAStr),
    VA = va(VAStr).
valence_type(Dyadic, DyadicStr) :-
    dyadic_valence(Dyadic, DyadicStr).

% Dyadic valence definition - includes both VA1 and its corresponding VA2
% Third person va1 ('c', 'qu', 'qui') - combines with empty or 'im' assimilations
dyadic_valence([VA1, VA2], DyadicStr) :-
    member(VA1, ['c', 'qu', 'qui']),
    (VA2 = '' ; im(VA2)),
    atom_concat(VA1, VA2, DyadicStr).

% va1 ('n', 't', 'am') - combines with 'ech' assimilations
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

% Partially reduplicated reflexive object pronoun (27.3.2)
% m-o > m-oh-o, n-o > n-oh-o, t-o > t-oh-o.
dyadic_valence([VA1, 'oho'], DyadicStr) :-
    member(VA1, ['n', 'm', 't']),
    atom_concat(VA1, 'oho', DyadicStr).
% Object prefix + reflexive o (qu-im-o-, m-o-): quimopictia, quimoyōllotia quimocenmaca, quinohualhuīca. Andrews 27.3.2-27.3.3.
dyadic_valence([VA1, VA2, 'o'], DyadicStr) :-
    member(VA1, ['c', 'qu', 'qui']),
    im(VA2),
    atom_concat(VA1, VA2, V),
    atom_concat(V, 'o', DyadicStr).

% Reflexive object pronouns are va1 n/m/t with an empty or o va2, including
% the partially reduplicated shape oh-o.
reflexive_valence([VA1, VA2]) :-
    member(VA1, ['n', 'm', 't']),
    member(VA2, ['', 'o', 'oho']).

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

% Valid valence values
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
ech('ech').  % first-person object suffix -ech (short e)

% valence_precedes_dir(ValenceType)
% True if Dir comes AFTER Valence (i.e., the default case)
% valence_precedes_dir(ValenceType)
% \+ dir_precedes_valence(ValenceType).

% Principal-part lookup used by compound_stem/4.
% A stem in any of its three principal parts (for purposive compounds).
verb_stem_form(Stem, Class, Trans) :- verb_stem_type(_, Stem, _, _, Class, Trans).
verb_stem_form(Stem, Class, Trans) :- verb_stem_type(_, _, Stem, _, Class, Trans).
verb_stem_form(Stem, Class, Trans) :- verb_stem_type(_, _, _, Stem, Class, Trans).

% ============================================================================
% NOMINAL NUCLEAR CLAUSES (NNCs)
% ============================================================================

% An expanded NNC can take the antecessive order prefix from the VNC that it supplements
expanded_nnc(Vocable, [antecessive_order_prefix, NNC]) :-
    antecessive_order_prefix(Prefix),
    atom_concat(Prefix, Rest, Vocable),
    nnc(Rest, NNC).
expanded_nnc(Vocable, [negativizing_prefix, NNC]) :-
    negativizing_prefix(Prefix),
    atom_concat(Prefix, Rest, Vocable),
    nnc(Rest, NNC).
expanded_nnc(Vocable, [article, NNC]) :-
    atom_concat('in', Rest, Vocable),
    Rest \= '',
    nnc(Rest, NNC).
expanded_nnc(Vocable, Parse) :-
    nnc(Vocable, Parse).
% Vocative -ē (Andrews 18.11): Mēxihca-ē, Tlaxcalteca-ē, Cempoallteca-ē.
expanded_nnc(Vocable, [NNC, vocative]) :-
    atom_concat(Base, 'ē', Vocable),
    Base \= '',
    nnc(Base, NNC).

% An NNC can be either absolutive state or possessive state
nnc(Vocable, Parse) :-
    ( absolutive_state_nnc(Vocable, Parse)
    ; possessive_state_nnc(Vocable, Parse)
    ).
% Animate -tin plurals (pipil-tin, mācehual-tin).
nnc(Vocable, nnc(pers_zero, predicate(StemStructure), ['t', 'in'])) :-
    atom_concat(StemStr, 'tin', Vocable),
    StemStr \= '',
    noun_stem_type(_, _, Affinity, Distributive, animate),
    member(StemStr, [Affinity, Distributive]),
    StemStructure = StemStr.

% Absolutive state NNC definition
% The formula for an absolutive state NNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: Stem
% e.g. ancemihtimeh - we were sleeping
% pers(an) + (stem(cem-ihti) + num1(m) + num2(eh)
absolutive_state_nnc(Vocable, nnc(Pers1Type, Predicate, Nums)) :-
% 1. Parse person prefix (Pers)
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),

% 2. Parse Numbers (Num1 + Num2) from the end of Rest1
    nnc_nums(Nums),
    Nums = [Num1, Num2],
    nums_string(Nums, NumsStr),
    atom_concat(StemStr, NumsStr, Rest1),  % Rest1 = StemStr + NumsStr

% 3. Identify Stem (StemStr) and its properties
    (  % Regular noun stem
    noun_stem_type(PlainStem, Class, AffinityStem, DistributiveVarietalStem, Animacy),
% If singular (num2 not in ['h', 'eh'])
    ( Num2 = '' ->
        (  % Plain stem (the default)
            StemStr = PlainStem,
            StemStructure = PlainStem,
            Num1 = Class
        ;  % Affinity stem for inanimate nouns (e.g., cācalli)
            StemStr = AffinityStem,
            StemStructure = AffinityStem,
            Animacy = inanimate,
            Num1 = Class
        ;  % Distributive/Varietal stem for inanimate nouns (e.g., cahcalli)
            StemStr = DistributiveVarietalStem,
            StemStructure = DistributiveVarietalStem,
            Animacy = inanimate,
            Num1 = Class
        )
    ;  % If plural, parsed stem can match any of the three forms
        ( StemStr = PlainStem, StemStructure = PlainStem, Animacy = animate
        ; StemStr = AffinityStem, StemStructure = AffinityStem, Animacy = animate
        ; StemStr = DistributiveVarietalStem, StemStructure = DistributiveVarietalStem, Animacy = animate
        )
    )
    ;  % Preterit-agentive stem in -quētl
        agentive_noun_stem(StemStr, StemStructure, Class, _Animacy),
        Num1 = Class
    ;  % Compound stem
        compound_nnc_stem(StemStr, StemStructure, Class, Animacy),
        ( Num2 = '' ->
% Singular compound: Num1 should be the class marker
            Num1 = Class
        ;
% Plural compound: Num1 is a plural marker, not the class
            Animacy = animate
% Don't constrain Num1 to equal Class for plurals
        )
    ),

% 4. Check valid combinations
    valid_nnc_combo(Pers1Type, Num1, Num2),

% 5. Build predicate structure
    Predicate = predicate(StemStructure).
% Absolutive plural in -tin (Andrews 11.4): totōl-tin.
absolutive_state_nnc(Vocable, nnc(Pers1Type, predicate(StemStructure), Nums)) :-
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    Nums = ['t', 'in'],
    nums_string(Nums, NumsStr),
    atom_concat(StemStr, NumsStr, Rest1),
    noun_stem_type(PlainStem, _, _, _, animate),
    StemStr = PlainStem,
    StemStructure = PlainStem,
    valid_nnc_combo(Pers1Type, 't', 'in').

% Inanimate -tin plurals; restricted to -tin so that pahmeh remains ungrammatical.
absolutive_state_nnc(Vocable, nnc(Pers1Type, predicate(StemStructure), ['t', 'in'])) :-
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),
    atom_concat(StemStr, 'tin', Rest1),
    StemStr \= '',
    noun_stem_type(StemStr, _, _, _, _),
    StemStructure = StemStr,
    valid_nnc_combo(Pers1Type, 't', 'in').

% Zero-person animate -tin plural.
absolutive_state_nnc(Vocable, nnc(pers_zero, predicate(Stem), ['t', 'in'])) :-
    atom_concat(Stem, 'tin', Vocable),
    Stem \= '',
    noun_stem_type(Stem, _, _, _, animate).

% Possessive state NNC definition
% The formula for a possessive state NNC is: Subject + Predicate
% where the subject is: Pers + ... + Num1 + Num2
% and the predicate is: State + Stem
% with the state being embedded as: Pers + State + Stem + Num1 + Num2
possessive_state_nnc(Vocable, nnc(Pers1Type, Predicate, Nums)) :-
% 1. Parse person prefix (Pers)
    pers1(Pers1Type),
    pers_prefix(Pers1Type, PersPrefix),
    atom_concat(PersPrefix, Rest1, Vocable),

% 2. Parse State (StateType)
% Rest1 = State + StemWithNums
    parse_state_and_stem(Rest1, StateType, _, StemWithNums),

% 3. Parse Numbers (Num1 + Num2) from the end of StemWithNums
    nnc_nums(Nums),
    Nums = [Num1, Num2],
    nums_string(Nums, NumsStr),
    atom_concat(StemStr, NumsStr, StemWithNums),  % StemWithNums = StemStr + NumsStr

% 4. Identify Stem (StemStr) and its properties
    (  % Regular noun stem
    noun_stem_type(PlainStem, _, AffinityStem, DistributiveVarietalStem, Animacy),
% If singular (num1 not 'hu')
    ( \+ Num1 = 'hu' ->
        (  % Plain stem (the default)
            StemStr = PlainStem,
            StemStructure = PlainStem
        ;  % Distributive/Varietal stem for inanimate nouns (e.g., cahcalli)
            StemStr = DistributiveVarietalStem,
            StemStructure = DistributiveVarietalStem,
            Animacy = inanimate
        ;  % Affinity stem for inanimate nouns (e.g., cācalli)
            StemStr = AffinityStem,
            StemStructure = AffinityStem,
            Animacy = inanimate
        )
    ;  % If plural, parsed stem can match any of the three forms
        ( StemStr = PlainStem, StemStructure = PlainStem, Animacy = animate
        ; StemStr = AffinityStem, StemStructure = AffinityStem, Animacy = animate
        ; StemStr = DistributiveVarietalStem, StemStructure = DistributiveVarietalStem, Animacy = animate
        )
    )
    ;  % Compound stem
        compound_nnc_stem(StemStr, StemStructure, _, Animacy),
        ( Num1 = 'hu' ->
% Plural compound: Animacy must be animate
            Animacy = animate
        ;
% Singular compound: no constraints
            true
        )
    ),

% 5. Check valid combinations
    valid_possessive_nnc_combo(Pers1Type, Num1, Num2),

% 6. Build predicate structure (incorporating State)
    Predicate = predicate([StateType, StemStructure]).

% Helper predicate to parse state and isolate stem
parse_state_and_stem(Rest1, StateType, StateStr, Stem) :-
    state_type(StateType, StateStr),
    atom_concat(StateStr, Stem, Rest1).

% Numbers structure
nnc_nums([Num1, Num2]) :-
    nnc_num1(Num1),
    nnc_num2(Num2).

% Valid num1 and num2 values
nnc_num1('').
nnc_num1('tl').
nnc_num1('tli').
nnc_num1('li').
nnc_num1('in').
nnc_num1('t').
nnc_num1('m').
nnc_num1('uh').
nnc_num1('hui').
nnc_num1('hu').
nnc_num1('qu').
nnc_num1('qui').  % qui noun class (TLAHTOHQUI, pl. TLAHTOHQUEH).

nnc_num2('').
nnc_num2('in').
nnc_num2('eh').
nnc_num2('h').
nnc_num2('an').
nnc_num2('ān').  % possessed plural -huān (Andrews 14.7.2)

% TODO following the model of VNCs, but is this needed?
% parse_nnc_root(Root, StemStr, directional_prefix(Prefix))
% directional_prefix(Prefix)
% atom_concat(Prefix, StemStr, Root).
parse_nnc_root(Root, StemStr) :-
    StemStr = Root.

% Compound NNC stem - currently only nominal_embed
compound_nnc_stem(StemStr, StemStructure, Class, Animacy) :-
    nominal_embed(StemStr, StemStructure, Class, Animacy).

% Recursive nominal_embed definition
% Base case: single embed stem + matrix stem
nominal_embed(StemStr, nominal_embed(EmbedStem, MatrixStem), Class, Animacy) :-
% Parse embed stem (plain form only)
    noun_stem_type(EmbedStem, _, _, _, _),
    atom_concat(EmbedStem, MatrixStem, StemStr),

% Matrix stem determines the class and animacy
    noun_stem_type(MatrixStem, Class, _, _, Animacy).

% Recursive case: embed stem + (rest of the compound)
nominal_embed(StemStr, nominal_embed(EmbedStem, RestStructure), Class, Animacy) :-
% Parse first embed stem (plain form only)
    noun_stem_type(EmbedStem, _, _, _, _),
    atom_concat(EmbedStem, Rest, StemStr),

% Recursively parse the rest (which itself is a nominal_embed)
    nominal_embed(Rest, RestStructure, Class, Animacy).

% State type definition - now returns the string representation
state_type(ST, STStr) :-
    st(STStr),
    ST = st(STStr).
state_type(Dyadic, DyadicStr) :-
    dyadic_state(Dyadic, DyadicStr).

% Dyadic state definition - includes both ST1 and its corresponding ST2
% Third person st1 ('ī') - combines with empty or 'm', 'n'
dyadic_state([ST1, ST2], DyadicStr) :-
    member(ST1, ['i', 'ī']),
    member(ST2, ['', 'm', 'n']),
    atom_concat(ST1, ST2, DyadicStr).

% Reflexive combinations - any reflexive va1 with va2 'o' or none
dyadic_state([ST1, ST2], DyadicStr) :-
    member(ST1, ['n', 'm', 't', 'am']),
    (ST2 = '' ; ST2 = 'o'),
    atom_concat(ST1, ST2, DyadicStr).
dyadic_state(['am', 'o'], 'amo').  % Second person plural possessive prefix amo- (Andrews 14.7).

st('ne').
st('tē').
st('tla').

st1('ī').
st1('m').
st1('am').
st1('n').
st1('t').

st2('o').
st2('m').
st2('n').

% In 12.6 Andrews says that inanimate nouns can be used with subject pronouns
% metaphorically, so I am not implementing all of the NNC paradigms which would
% put a constraint on which nouns could have subject pronouns
valid_nnc_combo(pers_ni, 'tl', '').
valid_nnc_combo(pers_ni, 'tli', '').
valid_nnc_combo(pers_ni, 'li', '').
valid_nnc_combo(pers_ni, 'in', '').
valid_nnc_combo(pers_ni, '', '').
valid_nnc_combo(pers_ti, 't', 'in').
valid_nnc_combo(pers_ti, 'm', 'eh').
valid_nnc_combo(pers_ti, '', 'h').
valid_nnc_combo(pers_ti, 'tl', '').
valid_nnc_combo(pers_ti, 'tli', '').
valid_nnc_combo(pers_ti, 'li', '').
valid_nnc_combo(pers_ti, 'in', '').
valid_nnc_combo(pers_ti, '', '').
valid_nnc_combo(pers_an, 't', 'in').
valid_nnc_combo(pers_an, 'm', 'eh').
valid_nnc_combo(pers_an, '', 'h').
valid_nnc_combo(pers_zero, 'tl', '').
valid_nnc_combo(pers_zero, 'tli', '').
valid_nnc_combo(pers_zero, 'li', '').
valid_nnc_combo(pers_zero, 'in', '').
valid_nnc_combo(pers_zero, '', '').
valid_nnc_combo(pers_zero, 't', 'in').
valid_nnc_combo(pers_zero, 'm', 'eh').
valid_nnc_combo(pers_zero, '', 'h').
valid_nnc_combo(pers_an, '', '').  % 2pl predicative noun (antiyacahuan)
valid_nnc_combo(pers_an, '', 'eh').
valid_nnc_combo(pers_an, 'qu', 'eh').
valid_nnc_combo(pers_an, 'qui', '').
valid_nnc_combo(pers_ni, '', 'h').  % Absolutive plural of animate nouns in -h (MĒXIHCAH, TLĀTILOLCAH, TLĀCAH). The parser has this row only as a 2-arity typo (valid_nnc_combo/2).
valid_nnc_combo(pers_ti, '', 'eh').
valid_nnc_combo(pers_ti, 'qu', 'eh').
valid_nnc_combo(pers_ti, 'qui', '').
valid_nnc_combo(pers_zero, '', 'eh').  % calpixqueh, teteoh
valid_nnc_combo(pers_zero, 'qu', 'eh').
valid_nnc_combo(pers_zero, 'qui', '').

valid_possessive_nnc_combo(pers_ni, 'uh', '').
valid_possessive_nnc_combo(pers_ni, 'hui', '').
valid_possessive_nnc_combo(pers_ni, '', '').
valid_possessive_nnc_combo(pers_ti, 'hu', 'an').
valid_possessive_nnc_combo(pers_ti, 'uh', '').
valid_possessive_nnc_combo(pers_ti, 'hui', '').
valid_possessive_nnc_combo(pers_ti, '', '').
valid_possessive_nnc_combo(pers_an, 'hu', 'an').
valid_possessive_nnc_combo(pers_zero, 'uh', '').
valid_possessive_nnc_combo(pers_zero, 'hui', '').
valid_possessive_nnc_combo(pers_zero, '', '').
valid_possessive_nnc_combo(pers_zero, 'hu', 'an').
valid_possessive_nnc_combo(pers_zero, '', 'h').
% Possessed plural -huān with a long ā (Andrews 14.7.2).
valid_possessive_nnc_combo(pers_ni, 'hu', 'ān').
valid_possessive_nnc_combo(pers_ti, 'hu', 'ān').
valid_possessive_nnc_combo(pers_an, 'hu', 'ān').
valid_possessive_nnc_combo(pers_zero, 'hu', 'ān').

% noun_stem_type(PlainStem, Class, AffinityStem, DistributiveVarietalStem, Animacy).
% Plain stems, class, affinity stem, and distributive/varietal stem are used for NNC parsing.

% --- Nominal and adjectival derivation ---

% Incorporated nominal stems before a verb (Andrews 30).
noun_embed_form(Embed) :-
    noun_stem_type(Embed, _, _, _, _).

noun_embed_form(Embed) :-
    noun_stem_type(_, _, Embed, _, _),
    Embed \= ''.

noun_embed_form(Embed) :-
    noun_stem_type(_, _, _, Embed, _),
    Embed \= ''.

% A base adjective or a descriptive noun+adjective compound.
adjective_form(Adjective) :- adj_stem(Adjective).

adjective_form(Word) :-
    noun_embed_form(Embed),
    adj_stem(Adjective),
    atom_concat(Embed, Adjective, Word).

closed_class_word(Adjective, adjective) :- adjective_form(Adjective).

% Adjectives in -tic (and the smaller set in -c/-ti) form an animate plural in -queh, written -que when final h is dropped: coztic > coztique(h).
closed_class_word(Plural, adjective) :-
    adjective_form(Singular),
    ( atom_concat(Base, 'tic', Singular),
      atom_concat(Base, 'tiqueh', Plural)
    ; atom_concat(Base, 'tic', Singular),
      atom_concat(Base, 'tique', Plural)
    ; atom_concat(Base, 'huac', Singular),
      atom_concat(Base, 'huahqueh', Plural)
    ; atom_concat(Base, 'huac', Singular),
      atom_concat(Base, 'huahque', Plural)
    ; atom_concat(Base, 'c', Singular),
      atom_concat(Base, 'queh', Plural)
    ; atom_concat(Base, 'c', Singular),
      atom_concat(Base, 'que', Plural)
    ; atom_concat(Singular, 'queh', Plural)
    ; atom_concat(Singular, 'que', Plural)
    ).

closed_class_word(Vocable, adjective) :-
    nonvar(Vocable),
    atom_concat(Stem, 'loh', Vocable),
    Stem \= '',
    atom_concat(_, 'l', Stem),
    ( noun_stem_type(Stem, _, _, _, _)
    ; nominal_embed(Stem, _, _, _)
    ).

% K -YOH 'having'; the allomorph -loh follows stems ending in l.
closed_class_word(Vocable, adjective) :-
    nonvar(Vocable),
    atom_concat(Stem, 'yoh', Vocable),
    Stem \= '',
    ( noun_stem_type(Stem, _, _, _, _)
    ; nominal_embed(Stem, _, _, _)
    ).

% Andrews 48.2: -tica 'by means of, with' is added to a noun stem.
closed_class_word(Vocable, adverb) :-
    nonvar(Vocable),
    atom_concat(Stem, 'tica', Vocable),
    Stem \= '',
    ( noun_stem_type(Stem, _, _, _, _)
    ; nominal_embed(Stem, _, _, _)
    ).

% TICA 'by means of' (Andrews 48.2.6): ācal-li > ācaltica, oh-tli > ohtlica.
noun_stem_type(Stem, '', Stem, Stem, Animacy) :-
    atom(Stem),
    atom_concat(Base, 'tica', Stem),
    noun_stem_type(Base, _, _, _, Animacy).

% Postposed -TLAN 'among, at the place of' (Andrews 48.2.4).
noun_stem_type(Stem, '', Stem, Stem, Animacy) :-
    atom(Stem),
    atom_concat(Base, 'tlan', Stem),
    noun_stem_type(Base, _, _, _, Animacy).

% Denominal -YOH 'having' (Andrews 31.4).
noun_stem_type(Stem, '', Stem, Stem, Animacy) :-
    atom(Stem),
    atom_concat(Base, 'yoh', Stem),
    noun_stem_type(Base, _, _, _, Animacy).

% Preterit-agentive NNCs with the general-use -quētl suffix (Lesson 35.5).
% The suffix attaches to a perfective verb stem, optionally with a reflexive
% object pronoun: m-o-machtih-quētl "one who has learned/taught himself".
agentive_noun_stem(Stem, agentive(Prefix, Base, Suffix), 'tl', animate) :-
    agentive_preterit_parts(Stem, Prefix, Base, Suffix).

agentive_preterit_stem(Stem) :-
    agentive_preterit_parts(Stem, _, _, _).

agentive_preterit_parts(Stem, Prefix, Base, Suffix) :-
    ( Prefix = '' ; member(Prefix, ['mo', 'no', 'to']) ),
    atom_concat(Prefix, Rest, Stem),
    verb_stem_type(_, _, Perfective, _, _, _),
    agentive_perfective_base(Perfective, Base),
    agentive_suffix(Suffix),
    atom_concat(Base, Suffix, Rest).

agentive_perfective_base(Perfective, Perfective).

agentive_perfective_base(Perfective, Base) :-
    atom_concat(Base, 'h', Perfective),
    Base \= ''.

agentive_suffix('quē').
agentive_suffix('que').

% ============================================================================
% SHARED FACTS
% ============================================================================

% The following facts can apply to more than one kind of vocable or nuclear clause

% Basic predicates
negativizing_prefix('ah').
negativizing_prefix('ca').

honorific('tzin').

% ============================================================================
% PARSING
% ============================================================================

% Top-level parse predicate applies surface transformation for rules like
% elision and vowel shortening, and then parses
parse(SurfaceVocable, Parse) :-
    surface_to_underlying(SurfaceVocable, UnderlyingVocable),
    vocable(UnderlyingVocable, Parse).
% sources texts capitalize sentence-initial vocables. Parse them as their
% lowercase counterparts rather than duplicating the lexicon.
parse(SurfaceVocable, Parse) :-
    downcase_atom(SurfaceVocable, LowerVocable),
    LowerVocable \= SurfaceVocable,
    parse(LowerVocable, Parse).
% The imperfect -ya is written -ia after a stem-final vowel; rewrite -aia to -aya.
parse(Surface, Parse) :-
    atom_concat(Base, 'aia', Surface),
    atom_concat(Base, 'aya', Restored),
    surface_to_underlying(Restored, Underlying),
    vocable(Underlying, Parse).

% ============================================================================
% PHONOLOGY
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
% Imperfect -ya is written -ia after a stem-final vowel (quitoaia, macoia quīzaia, tlamatzoaia, momauhtiāia). Replace final V + ia by V + ya.
surface_to_underlying(Surface, Underlying) :-
    atom_chars(Surface, Cs),
    append(Init, ['i', 'a'], Cs),
    append(Prefix, [V], Init),
    vowel_char(V),
    append(Prefix, [V, 'y', 'a'], UCs),
    atom_chars(Underlying, UCs).

surface_to_underlying(Surface, Underlying) :-
    atom_chars(Surface, [C|Cs]),
    Cs \= [],
    capital_long_vowel(C, L),
    atom_chars(Underlying, [L|Cs]).

% The imperfect suffix -ya is written -ia after i.
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Prefix, 'aia', Surface),
    atom_concat(Prefix, 'aya', Underlying).

% ...aiā is a spelling of the imperfect ...a-ya (quicuaiā = quicuaya).
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Prefix, 'aiā', Surface),
    atom_concat(Prefix, 'aya', Underlying).

% Prevocalic y is written i: map final -ia to -ya.
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Prefix, 'ia', Surface),
    Prefix \= '',
    atom_concat(Prefix, 'ya', Underlying).

surface_to_underlying(Surface, Underlying) :-
    atom_concat(Prefix, 'ia', Surface),
    atom_concat(Prefix, 'iya', Underlying).

% n assimilates to m before m (cōātzontecomeh < cōātzontecon-meh).
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Prefix, 'meh', Surface),
    atom_concat(Prefix, 'nmeh', Underlying).

% The imperfect of an i-final stem is written -ia for -iya.
surface_to_underlying(Surface, Underlying) :-
    atom_concat(Root, 'ia', Surface),
    atom_concat(Root, 'iya', Underlying).

capital_long_vowel('A', 'ā').  % word whose first vowel is long (Oquihīyohui = Ō-qu-ihīyohui) would fail even in lenient mode. Add the capital-to-long-vowel surface variants.
capital_long_vowel('E', 'ē').
capital_long_vowel('I', 'ī').
capital_long_vowel('O', 'ō').
capital_long_vowel('U', 'ū').

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
valid_combo(pers_xi, imperfective, 'ni', '', '', [a1, a2, b, c, d]).
valid_combo(pers_xi, imperfective, 'ni', '', 'h', [a1, a2, b, c, d]).

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
valid_combo(pers_an, hypothetical, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_an, hypothetical, '', '', 'n', [a1, a2, b, c, d]).
valid_combo(pers_an, hypothetical, 'z', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_an, hypothetical, 'zquia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_an, hypothetical, 'zquia', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, '', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_an, imperfective, 'ia', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_an, perfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_an, perfective, '', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_ni, hypothetical, 'zquia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ni, hypothetical, 'zquia', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_ni, imperfective, '', 'c', '', [a1, a2, b, c, d]).
valid_combo(pers_ni, imperfective, '', 'c', '', [a1]).
valid_combo(pers_ni, imperfective, 'ia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ni, imperfective, 'z', '', '', [a1]).
valid_combo(pers_ti, hypothetical, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, 'z', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, 'zquia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, hypothetical, 'zquia', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, '', 'c', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, '', 'c', '', [a1]).
valid_combo(pers_ti, imperfective, '', 'qu', 'e', [a1, a2, b, c, d]).  % The often writes the plural -queh without its final h (-que).
valid_combo(pers_ti, imperfective, 'ia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'ia', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_ti, imperfective, 'z', '', '', [a1]).
valid_combo(pers_ti, perfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_ti, perfective, '', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_xi, hypothetical, '', '', 'n', [a1, a2, b, c, d]).
valid_combo(pers_xi, hypothetical, '', '', 'ān', [a1, a2, b, c, d]).
valid_combo(pers_xi, imperfective, '', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, '', '', 'ān', [a1, a2, b, c, d]).  % ancualāni), and the plural imperative in -an on the hypothetical stem (xihualhuian, ma onhuian).
valid_combo(pers_zero, hypothetical, 'z', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, 'zquia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, hypothetical, 'zquia', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', '', 'eh', [a1, a2, b, c, d]).  % preterit plural -queh) even though the compound stem is tagged imperfective by the parser (Andrews 11.4.5, 28.6). Additive valid-combo facts.
valid_combo(pers_zero, imperfective, '', 'c', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', 'c', '', [a1]).  % (Andrews 20.2, 21). Nonactive stems are Class A and their perfective is identical to the imperfective.
valid_combo(pers_zero, imperfective, '', 'qu', 'e', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', 'qu', 'eh', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, '', 'qu', 'eh', [a1]).  % Passive plural -lo-queh (ittaloque, ōittaloque, ixpopoyomictiloqueh)
valid_combo(pers_zero, imperfective, 'c', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ia', '', '', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'ia', '', 'h', [a1, a2, b, c, d]).
valid_combo(pers_zero, imperfective, 'z', '', '', [a1]).  % Passive/impersonal futures in -z (pīelōz): nonactive_forms tags the stem imperfective, so license the future tense for Class A nonactive stems.
valid_combo(pers_zero, perfective, '', '', 'e', [a1, a2, b, c, d]).
valid_combo(pers_zero, perfective, '', 'qu', 'e', [a1, a2, b, c, d]).

% ============================================================================
% DERIVED VERBSTEMS (Lessons 24-27)
% ============================================================================

% A derived stem behaves like a verb_stem_type for parsing, and can be
% inspected directly

% derived_stem(Stem, Class, Transitivity, Derivation, Source)
% nonactive_stem(Stem, Structure, Class)

% Reduplication helpers

vowel_char(a). vowel_char(e). vowel_char(i). vowel_char(o). vowel_char(u).
vowel_char('ā'). vowel_char('ē'). vowel_char('ī'). vowel_char('ō'). vowel_char('ū').

strip_final_vowel(Word, Replacive) :-
    atom_chars(Word, Chars),
    append(Init, [V], Chars),
    vowel_char(V),
    atom_chars(Replacive, Init).

% 26.2: first-type applicative stems (replacive stem + iā)

applicative_base('chihua', c).
applicative_base('quiyahui', c).
applicative_base('ihtlani', c).

derived_stem(Stem, c, transitive,
             applicative(Source, 'iā'), Source) :-
    applicative_base(Source, c),
    strip_final_vowel(Source, Replacive),
    atom_concat(Replacive, 'iā', Stem).

% The same rule applies to any transitive Class C verbstem in the lexicon.
derived_stem(Stem, c, transitive,
             applicative(Source, 'iā'), Source) :-
    verb_stem_type(_, Source, _, _, c, transitive),
    strip_final_vowel(Source, Replacive),
    atom_concat(Replacive, 'iā', Stem).
derived_stem(Stem, c, transitive, applicative(Source, 'huia'), Source) :-
    verb_stem_type(_, Source, _, _, Class, _),
    Class \= c,
    atom_concat(Source, 'huia', Stem).

% Applicative stems for non-Class-C verbs (Andrews 26.2).
derived_stem(Stem, c, transitive, applicative(Source, 'lia'), Source) :-
    verb_stem_type(_, Source, _, _, Class, _),
    Class \= c,
    strip_final_vowel(Source, Replacive),
    atom_concat(Replacive, 'lia', Stem).

% Causative stems (Andrews 25.2): -tia attaches to the replacive stem.
derived_stem(Stem, c, transitive, causative(Source), Source) :-
    ( verb_stem_type(_, Source, _, _, _, transitive)
    ; verb_stem_type(_, Source, _, _, _, intransitive)
    ),
    strip_final_vowel(Source, Replacive),
    atom_concat(Replacive, 'tia', Stem).

% 20.2-20.6: nonactive stems from ordinary active stems

% 20.2: the lō suffix. Most sources simply add lō; Class C sources replace
% their final ā with ō before lō (choloa > cholōlō).
nonactive_stem(Stem, nonactive(Source, 'lō'), a1) :-
    verb_stem_type(_, Source, _, _, Class, _),
    member(Class, [a1, a2, b, d]),
    atom_concat(Source, 'lō', Stem).

nonactive_stem(Stem, nonactive(Source, 'lō'), a1) :-
    verb_stem_type(_, Source, _, _, c, _),
    ( atom_concat(Base, 'oā', Source), atom_concat(Base, 'ōlō', Stem)
    ; atom_concat(Base, 'iā', Source), atom_concat(Base, 'īlō', Stem)
    ; atom_concat(Base, 'ā', Source),  atom_concat(Base, 'ōlō', Stem)
    ).

% 20.4: the ō suffix (final vowel deleted, with the usual consonant shifts).
nonactive_stem(Stem, nonactive(Source, 'ō'), a1) :-
    verb_stem_type(_, Source, _, _, _, _),
    nonactive_o(Source, Stem).

nonactive_o(Source, Stem) :-
    ( atom_concat(Base, 'ca', Source),  atom_concat(Base, 'cō', Stem)
    ; atom_concat(Base, 'qui', Source), atom_concat(Base, 'cō', Stem)
    ; atom_concat(Base, 'na', Source),  atom_concat(Base, 'nō', Stem)
    ; atom_concat(Base, 'ta', Source),  atom_concat(Base, 'tō', Stem)
    ; atom_concat(Base, 'za', Source),  atom_concat(Base, 'xō', Stem)
    ; atom_concat(Base, 'ci', Source),  atom_concat(Base, 'xō', Stem)
    ; atom_concat(Base, 'cui', Source), atom_concat(Base, 'cō', Stem)
    ).

% 20.5: the o-hua suffixal combination.
nonactive_stem(Stem, nonactive(Source, 'o-hua'), a1) :-
    verb_stem_type(_, Source, _, _, _, _),
    nonactive_ohua(Source, Stem).

nonactive_ohua(Source, Stem) :-
    ( atom_concat(Base, 'ca', Source),  atom_concat(Base, 'cōhua', Stem)
    ; atom_concat(Base, 'qui', Source), atom_concat(Base, 'cōhua', Stem)
    ; atom_concat(Base, 'mi', Source),  atom_concat(Base, 'mōhua', Stem)
    ; atom_concat(Base, 'za', Source),  atom_concat(Base, 'xōhua', Stem)
    ; atom_concat(Base, 'ci', Source),  atom_concat(Base, 'xōhua', Stem)
    ; atom_concat(Base, 'tzi', Source), atom_concat(Base, 'chōhua', Stem)
    ).

% 20.6: the plain hua suffix (stems ending in i or o).
nonactive_stem(Stem, nonactive(Source, 'hua'), a1) :-
    verb_stem_type(_, Source, _, _, _, _),
    atom_concat(Source, 'hua', Stem),
    ( atom_concat(_, 'i', Source)
    ; atom_concat(_, 'o', Source)
    ; atom_concat(_, 'ō', Source)
    ).
% Nonactive stems in short -lo for -lō (tlachiyalo, tlamalo).
nonactive_stem(Stem, nonactive(Source, 'lo'), a1) :-
    verb_stem_type(_, Source, _, _, Class, _),
    member(Class, [a1, a2, b, d]),
    atom_concat(Source, 'lo', Stem).

nonactive_stem(Stem, nonactive(Source, 'lo'), a1) :-
    verb_stem_type(_, Source, _, _, c, _),
    ( atom_concat(Base, 'oā', Source), atom_concat(Base, 'ōlo', Stem)
    ; atom_concat(Base, 'iā', Source), atom_concat(Base, 'īlo', Stem)
    ; atom_concat(Base, 'ā', Source),  atom_concat(Base, 'ōlo', Stem)
    ).

% nonactive_forms/5 mirrors derived_forms/5 for use in VNC parsing. The
% nonactive stem is always Class A; its perfective shape is treated as
% identical to its imperfective shape here.
nonactive_forms(Imperf, Imperf, Imperf, Class, intransitive) :-
    nonactive_stem(Imperf, _Structure, Class).

% 27.3.2: reflexive object before a stem with an initial supportive i

% (ilpiā) > m-o-lpiā: the supportive i of the stem is deleted after the
% reflexive object pronoun.
strip_supportive_i(Full, Short) :-
    atom_concat('i', Rest, Full),
    Rest \= '',
    atom_chars(Rest, [C|_]),
    \+ vowel_char(C),
    Short = Rest.

supportive_variant(Stem, Imperfective, _, _, imperfective) :-
    strip_supportive_i(Imperfective, Stem).
supportive_variant(Stem, _, Perfective, _, perfective) :-
    strip_supportive_i(Perfective, Stem).
supportive_variant(Stem, _, _, Hypothetical, hypothetical) :-
    strip_supportive_i(Hypothetical, Stem).

% Using derived stems in VNC parsing

% derived_forms(Imperfective, Perfective, Hypothetical, Class, Transitivity).
% The perfective/hypothetical shapes are conservative: the citation stem is
% reused unless the derivation has a well-known perfective.
derived_forms(Imperf, Perf, Hyp, Class, Trans) :-
    derived_stem(Imperf, Class, Trans, Derivation, _),
    ( Derivation = applicative(_, _) ->
        Perf = Imperf, Hyp = Imperf
    ; Perf = Imperf, Hyp = Imperf
    ).

% A hypothetical stem may come from the lexicon or from a derivation.
verb_hypothetical(Hyp, Class, Trans) :-
    verb_stem_type(_, _, _, Hyp, Class, Trans).
verb_hypothetical(Hyp, Class, Trans) :-
    derived_forms(_, _, Hyp, Class, Trans).

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
vowel_variants('A', ['A', 'Ā']).  % Lenient macronization must also work on sentence-initial capital vowels so that e.g. Atl can be recognized as Ātl (K Ā-TL).
vowel_variants('E', ['E', 'Ē']).
vowel_variants('I', ['I', 'Ī']).
vowel_variants('O', ['O', 'Ō']).
vowel_variants('U', ['U', 'Ū']).

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
% LENIENT MACRON PARSING
% ============================================================================
% In lenient mode, vowels that are written without a macron in the input may
% be short or long. Vowels that already carry a macron are fixed. Every
% resulting macronization that parses is returned together with its parse.

% parse_lenient(+Word, -MacronizedWord, -Parse)
parse_lenient(Word, MacronizedWord, Parse) :-
    find_valid_macronizations(Word, Results),
    member(MacronizedWord-Parse, Results).

% Convenience form matching parse/2.
parse_lenient(Word, Parse) :-
    parse_lenient(Word, _, Parse).
% Apply the case-insensitive capital fallback (parse/2) to lenient checking.
parse_lenient(Word, Mac, Parse) :-
    downcase_atom(Word, Lower),
    Lower \= Word,
    parse_lenient(Lower, Mac, Parse).

% ============================================================================
