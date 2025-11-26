:- encoding(utf8).

% Load the parser file to be tested
% Make sure parser.pl is in the same directory or accessible
%:- [parser].

% Export a simple predicate to run all tests in this module
%run_all_tests :-
%    run_tests(parser_tests).

% ============================================================================
% TEST SUITE
% ============================================================================

:- begin_tests(parser_tests).

% Helper predicate for positive tests: fails if no parse is found.
must_parse(Word) :-
    once(parse(Word, _Parse)).

% Helper predicate for negative tests: fails if any parse is found.
must_not_parse(Word) :-
    \+ parse(Word, _Parse).

% 3.1, 3.2: Particles
test(particle) :-
    must_parse('mā').

% 3.3, 3.4: Particle with prefix
test(particle_with_prefix) :-
    must_parse('ahtēl').

% 3.3, 3.4: Particle with suffix
test(particle_with_suffix) :-
    must_parse('tēltzin').

% 5: VNC Intransitive
test(vnc_intransitive) :-
    must_parse('tichicāhuaz').

% 6.2: VNC Transitive Monadic
test(vnc_transitive_monadic) :-
    must_parse('tlachīhuah').

% 6.3: VNC Transitive Dyadic
test(vnc_transitive_dyadic) :-
    must_parse('nimitztlazohtla').

% VNC with negativizing prefix
test(vnc_with_negativizing_prefix) :-
    must_parse('ahnamēchtlazohtla').

% 6.3: VNC Transitive Dyadic (variant)
test(vnc_transitive_dyadic_variation) :-
    must_parse('namextlazohtla').

% 6.6: VNC Intransitive Reflexive
test(vnc_intransitive_reflexive) :-
    must_parse('mozōmāz').

% 8.1.1: Intransitive directionality "to here"
test(intransitive_dir_to_here) :-
    must_parse('huālcholoa').

% 8.1.1: Intransitive directionality "to there"
test(intransitive_dir_to_there) :-
    must_parse('tonpanōzqueh').

% 8.1.1: Transitive directionality "to there"
test(transitive_dir_to_there) :-
    must_parse('niconnequi').

% 8.1.1: Transitive reflexive directionality "to here"
test(transitive_reflexive_dir_to_here) :-
    must_parse('nihuālmonequi').

% 8.1.3: VNC with antecessive and negativizing prefixes
test(vnc_with_antecessive_and_negativizing) :-
    must_parse('ahōnamēchtlazohtla').

% 14.2: Absolutive stem NNC (in)
test(nnc_abs_in) :-
    must_parse('michin').

% 14.2: Absolutive stem NNC (zero)
test(nnc_abs_zero) :-
    must_parse('chichi').

% 14.3.1: Absolutive stem NNC (affinity singular)
test(nnc_abs_affinity_singular) :-
    must_parse('cācalli').

% 14.3.2: Absolutive stem NNC (distributive singular)
test(nnc_abs_distributive_singular) :-
    must_parse('cahcalli').

% 14.4: Absolutive stem NNC with singular subject
test(nnc_abs_singular_subject) :-
    must_parse('ticihuātl').

% 14.5: Absolutive stem NNC with plural subject
test(nnc_abs_plural_subject) :-
    must_parse('titlācah').

% Absolutive with nominal embed
test(nnc_abs_nominal_embed) :-
    must_parse('tipahcihuātl').

% 14.6: Plural possessive state NNC
test(nnc_poss_plural) :-
    must_parse('tīcihuāhuan').

% 14.7: Singular possessive state NNC
test(nnc_poss_singular) :-
    must_parse('mochichi').

% Possessive with nominal embed
test(nnc_poss_nominal_embed) :-
    must_parse('tītōchcihuāhuan').

% 28.11: Intransitive future embed compound
test(vnc_intransitive_future_embed) :-
    must_parse('nicochiznequiya').

% 28.11: Transitive future embed compound
test(vnc_transitive_future_embed) :-
    must_parse('niquihcuilōznequi').

% 28.11: Passive future embed compound
test(vnc_passive_future_embed) :-
    must_parse('niquihcuilōlōznequi').

% 31.4: Nominal embed compound
test(nnc_nominal_embed) :-
    must_parse('exōtl').

% 31.4: Plural nominal embed compound
test(nnc_plural_nominal_embed) :-
    must_parse('tetlācacihuāmeh').

% 32.2.1: Affective NNC smallness/affection
test(affective_nnc_smallness) :-
    must_parse('tōtōpīl').

% 32.2.2: Affective NNC largeness/disparagement
test(affective_nnc_largeness) :-
    must_parse('ichcapōl').

% 32.2.2: Affective NNC largeness/disparagement
test(affective_nnc_largeness2) :-
    must_parse('calpōlli').

% 32.3.1 Affective NNC honorific/diminutive
test(affective_nnc_honorific_diminutive) :-
    must_parse('chichitzin').

% 32.3.2 Affective NNC diminutive
test(affective_nnc_diminutive) :-
    must_parse('cihuātōntli').

% 32.4 Affective NNC old, wornout
test(affective_nnc_old) :-
    must_parse('calzolli').

% 32.5.1 Affective NNC plural
test(affective_nnc_plural1) :-
    must_parse('ichcatotōntin').

% 32.5.1 Affective NNC plural
test(affective_nnc_plural2) :-
    must_parse('tōtōpipīl').

% 32.5.1 Affective NNC plural
test(affective_nnc_plural3) :-
    must_parse('chichitzitzin').

% 32.5.1 Affective NNC plural
test(affective_nnc_plural4) :-
    must_parse('ichcapopōl').

% 44.5.4 Ahmō
test(adverbial_nnc_ahmo) :-
    must_parse('ahmō').

% Misc: Phonology - Final vowel shortening
test(phonology_final_vowel_shortened) :-
    must_parse('nitemo').

% Misc: Phonology - No shortening
test(phonology_no_shortening) :-
    must_parse('nitemōni').

% --- Negative Tests (These *should* fail to parse) ---

test(fail_valence_on_intransitive) :-
    must_not_parse('nictemō').

test(fail_valence_on_intransitive_embed) :-
    must_not_parse('niccochiznequiya').

test(fail_no_valence_on_transitive) :-
    must_not_parse('nichīhua').

test(fail_nnc_with_wrong_absolutive) :-
    must_not_parse('michtl').

test(fail_inanimate_absolutive_with_plural_suffix) :-
    must_not_parse('pahmeh').

test(fail_inanimate_possessive_with_plural_suffix) :-
    must_not_parse('nopahhuan').

:- end_tests(parser_tests).

% =============================================================================
% MODERN VOCABULARY SETS (Sets 1-4)
% (These words were logically grouped to maintain the 4-set requirement)
% =============================================================================

:- begin_tests(modern_vocabulary_1).

% Helper predicate for positive tests: fails if no parse is found.
must_parse(Word) :-
    once(parse(Word, _Parse)).

test(parse_atl) :-
    must_parse('ātl').

test(parse_etl) :-
    must_parse('ētl').

test(parse_ichcatl) :-
    must_parse('ichcatl').

test(parse_ohtli) :-
    must_parse('ohtli').

test(parse_pamitl) :-
    must_parse('pāmitl').

test(parse_tocatl) :-
    must_parse('tocatl').

test(parse_cacaoh) :-
    must_parse('cacaoh').

test(parse_lemeni) :-
    must_parse('lemēni').

test(parse_tomin) :-
    must_parse('tomin').

test(parse_neci) :-
    must_parse('nēci').

test(parse_ehecatl) :-
    must_parse('ehēcatl').

test(parse_hueyi) :-
    must_parse('huēyi').

test(parse_yayahuic) :-
    must_parse('yayāhuic').

test(parse_ce) :-
    must_parse('cē').

test(parse_chahuiztli) :-
    must_parse('chāhuiztli').

test(parse_xoxoctic) :-
    must_parse('xoxoctic').

test(parse_tzapotl) :-
    must_parse('tzapotl').

test(parse_tlalli) :-
    must_parse('tlalli').

test(parse_cuahuitl) :-
    must_parse('cuahuitl').

test(parse_noteco) :-
    must_parse('notēco').

test(parse_tonatiuh) :-
    must_parse('tōnatiuh').

test(parse_nocniuh) :-
    must_parse('nocnīuh').

test(parse_necuhtli) :-
    must_parse('necuhtli').

test(parse_nicnequi) :-
    must_parse('nicnequi').

test(parse_niccaqui) :-
    must_parse('niccaqui').

test(parse_canin) :-
    must_parse('cānin').

test(parse_mocauhqui) :-
    must_parse('mocauhqui').

test(parse_quitzacui) :-
    must_parse('quitzacui').

test(parse_tlacualli) :-
    must_parse('tlacualli').

test(parse_tecciztli) :-
    must_parse('tēcciztli').

test(parse_notlacauh) :-
    must_parse('notlācauh').

test(parse_nocihuauh) :-
    must_parse('nocihuāuh').

test(parse_tototl) :-
    must_parse('tōtōtl').

test(parse_quetzalcoatl) :-
    must_parse('quetzalcōātl').

test(parse_cocolia) :-
    must_parse('niccocolia').

test(parse_mococoa) :-
    must_parse('mococoa').

test(parse_coatl) :-
    must_parse('cōātl').

test(parse_niccohua) :-
    must_parse('niccōhua').

test(parse_nimotlaloa) :-
    must_parse('nimotlaloa').

test(parse_tetiya) :-
    must_parse('tētiya').

test(parse_nictequihuia) :-
    must_parse('nictequihuia').

test(parse_chichi) :-
    must_parse('chichi').

test(parse_tlatia) :-
    must_parse('nictlatīa').

test(parse_toca) :-
    must_parse('nictōca').

test(parse_amo) :-
    must_parse('āmo').

test(parse_quena) :-
    must_parse('quena').

%test(parse_nanan) :-
%    must_parse('nonānān').

%test(parse_tetic) :-
%    must_parse('tētic').

test(parse_noyollo) :-
    must_parse('noyōllō').

test(parse_nonantzin) :-
    must_parse('nonāntzin').

test(parse_tlayi) :-
    must_parse('tlāyi').

test(parse_ahui) :-
    must_parse('āhui').

test(parse_ahuitl) :-
    must_parse('āhuitl').

test(parse_cihuatl) :-
    must_parse('cihuātl').

test(parse_tzahtzi) :-
    must_parse('tzahtzi').

test(parse_ahhua) :-
    must_parse('nicahhua').

test(parse_tlazcamati) :-
    must_parse('tlazcāmati').

test(parse_tlazohcamati) :-
    must_parse('tlazohcāmati').

:- end_tests(modern_vocabulary_1).
