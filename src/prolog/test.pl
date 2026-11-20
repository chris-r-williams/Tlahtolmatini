:- encoding(utf8).

% ============================================================================
% PARSER TEST SUITES
%
%   1. andrews_grammar — Andrews, A Grammar of Classical Nahuatl
%      Grouped by chapter/section, in grammar order.
%   2. learn_nahuatl   — Yan Garcia, Learn Nahuatl
%      Vocabulary sets 1-4, then the individual word checks.
%   3. book12_ch1      — Florentine Codex, Book 12, chapter 1
%      Full-vocabulary regression on the corrected chapter text.
% ============================================================================

% ============================================================================
% 1. ANDREWS, A GRAMMAR OF CLASSICAL NAHUATL
% ============================================================================

:- begin_tests(andrews_grammar).

% Helper predicate for positive tests: fails if no parse is found.
must_parse(Word) :-
    once(parse(Word, _Parse)).

% Helper predicate for negative tests: fails if any parse is found.
must_not_parse(Word) :-
    \+ parse(Word, _Parse).

% --- Chapter 3: particles ---------------------------------------------------

% 3.1, 3.2: Particles
test(particle) :-
    must_parse('mā').

% 3.3, 3.4: Particle with prefix
test(particle_with_prefix) :-
    must_parse('ahtēl').

% 3.3, 3.4: Particle with suffix
test(particle_with_suffix) :-
    must_parse('tēltzin').

% --- Chapter 5: intransitive VNCs ------------------------------------------

% 5: VNC Intransitive
test(vnc_intransitive) :-
    must_parse('tichicāhuaz').

% --- Chapter 6: transitive VNCs and reflexives -----------------------------

% 6.2: VNC Transitive Monadic
test(vnc_transitive_monadic) :-
    must_parse('tlachihuah').

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

% Negative: an object prefix must not make an intransitive verb transitive.
% (nictemō is ambiguous with the optative of temoa, so use choca here.)
test(fail_valence_on_intransitive) :-
    must_not_parse('nicchoca').

% Negative: the same restriction holds inside a future-embed compound.
test(fail_valence_on_intransitive_embed) :-
    must_not_parse('niccochiznequiya').

% Negative: a transitive stem still requires its object prefix.
test(fail_no_valence_on_transitive) :-
    must_not_parse('nichihua').

% --- Chapter 8: directionality ---------------------------------------------

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

% --- Chapter 10: preterit and distant past ---------------------------------

% 10.5: Class-A preterit indicative VNCs (stem + preterit /c/)
test(preterit_class_a_tzahtzi) :-
    must_parse('nitzahtzic').

test(preterit_class_a_quiza) :-
    must_parse('niquiz').

test(preterit_class_a_quiza_neg) :-
    must_parse('ahtiquiz').

test(preterit_class_a_choca) :-
    must_parse('nichocac').

test(preterit_class_a_itta) :-
    must_parse('niquittac').

test(preterit_class_a_cui) :-
    must_parse('niccuic').

% 10.5: Class-B preterit indicative VNCs (bare perfective stem)
test(preterit_class_b_cochi) :-
    must_parse('nicoch').

test(preterit_class_b_miqui) :-
    must_parse('nimic').

test(preterit_class_b_nemi) :-
    must_parse('ninen').

test(preterit_class_b_caqui) :-
    must_parse('niccac').

test(preterit_class_b_temo_distant) :-
    must_parse('ahnitemōc').

% 10.5: Distant past (perfective stem + /ca/)
test(distant_past_cochi) :-
    must_parse('nicochca').

test(distant_past_quiza) :-
    must_parse('ōniquizca').

% --- Chapter 14: nouns and the absolutive ----------------------------------

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

% Negative: the absolutive suffix must match the noun class.
test(fail_nnc_with_wrong_absolutive) :-
    must_not_parse('michtl').

% Negative: an inanimate noun does not take a plural absolutive suffix.
test(fail_inanimate_absolutive_with_plural_suffix) :-
    must_not_parse('pahmeh').

% Negative: an inanimate possessive does not take a plural suffix.
test(fail_inanimate_possessive_with_plural_suffix) :-
    must_not_parse('nopahhuan').

% --- Chapters 20-22: nonactive stems ---------------------------------------

% 20.2, 21: Nonactive stems (passive / impersonal)
test(nonactive_lo_short) :-
    must_parse('chihualo').

test(nonactive_lo_long) :-
    must_parse('titlazohtlālōh').

test(nonactive_o_amittoa) :-
    must_parse('amittōh').

test(nonactive_o_huica) :-
    must_parse('nihuicōya').

test(passive_lo_chihua) :-
    once(nonactive_stem('chīhualō', nonactive('chīhua', 'lō'), a1)).

test(passive_lo_tlazohtla) :-
    once(nonactive_stem('tlazohtlālō', nonactive('tlazohtlā', 'lō'), a1)).

test(passive_lo_choloa) :-
    once(nonactive_stem('cholōlō', nonactive('choloā', 'lō'), a1)).

test(impersonal_o_itta) :-
    once(nonactive_stem('ittō', nonactive('itta', 'ō'), a1)).

test(impersonal_o_huica) :-
    once(nonactive_stem('huicō', nonactive('huica', 'ō'), a1)).

test(impersonal_ohua_choca) :-
    once(nonactive_stem('chocōhua', nonactive('choca', 'o-hua'), a1)).

test(passive_hua_cochi) :-
    once(nonactive_stem('cochihua', nonactive('cochi', 'hua'), a1)).

% The nonactive suffix is obligatory: the bare active stem is not a
% nonactive stem.
test(nonactive_requires_suffix, [fail]) :-
    nonactive_stem('itta', _Structure, _Class).

% Negative: the valences must still be enforced on the nonactive path.
test(fail_nonactive_valence_on_transitive) :-
    must_not_parse('nichihua').

% --- Chapters 24-27: derived stems and reflexive pronouns ------------------

% There is a derivation with the given imperfective stem, class and source.
has_derivation(Stem, Class, Source) :-
    once(derived_stem(Stem, Class, _Trans, _Derivation, Source)).

% 26.2: first-type applicative stems (short vowels as in the book).
test(applicative_chihua) :-
    has_derivation('chihuiā', c, 'chihua').

test(applicative_quiyahui) :-
    has_derivation('quiyahuiā', c, 'quiyahui').

test(applicative_ihtlani) :-
    has_derivation('ihtlaniā', c, 'ihtlani').

% The nonactive stem replaces ca with c-ō; a form that keeps ca is not
% a nonactive stem.
test(nonactive_rejects_ca, [fail]) :-
    nonactive_stem('chichipica', _Structure, _Class).

% Derived stems are accepted by the parser: destockal and applicative
% stems are lexical; reduplicated/frequentative stems are entered explicitly.
test(parse_derived_applicative) :-
    must_parse('niquichihuiā').

% Negative: a derived destockal frequentative is intransitive, so it cannot
% be used where a transitive stem is required.
test(parse_derived_intransitive_valence, [fail]) :-
    must_parse('quipapatlaca').

% 27.3.2: Reflexive object before a stem with an initial supportive /i/;
% the /i/ is deleted after m-o/n-o/t-o.
test(reflexive_supportive_i) :-
    must_parse('molpia').

% 27.3.2: The reflexive pronoun undergoes partial reduplication
% (m-o -> m-oh-o, n-o -> n-oh-o) before such a stem.
test(reflexive_partial_reduplication_m) :-
    must_parse('moholpiah').

test(reflexive_partial_reduplication_n) :-
    must_parse('ninolpih').

test(reflexive_partial_reduplication_n_oh) :-
    must_parse('ninoholpih').

% 27.3.2: Same, with the antecessive prefix.
test(reflexive_partial_reduplication_antecessive) :-
    must_parse('ōninoholpih').

% --- Chapter 28: future embeddings and connective-t compounds --------------

% 28.11: Intransitive future embed compound
test(vnc_intransitive_future_embed) :-
    must_parse('nicochiznequiya').

% 28.11: Transitive future embed compound
test(vnc_transitive_future_embed) :-
    must_parse('niquihcuilōznequi').

% 28.11: Passive future embed compound
test(vnc_passive_future_embed) :-
    must_parse('niquihcuilōlōznequi').

% 28.5-28.8: Connective-t compounds (intransitive matrices)
test(ct_embeds_ehua) :-
    must_parse('nitzahtzitēhua').

test(ct_embeds_uh) :-
    must_parse('nicuīcatiuh').

test(ct_embeds_ye_optative) :-
    must_parse('cuīcatiye').

test(ct_embeds_huetz) :-
    must_parse('mictihuetz').

test(ct_embeds_quiza_future) :-
    must_parse('quicuitiquizaz').

test(ct_embeds_quiz_preterit) :-
    must_parse('ōniquiztiquiz').

test(ct_embeds_nemi_future) :-
    must_parse('tiquinhuicatinemizqueh').

test(ct_embeds_ahci) :-
    must_parse('titlacuahtahcizqueh').

% 28.5, 28.12: the matrix of a connective-t compound must be a licensed
% intransitive matrix verb, never a future-embed construction.
test(ct_valid_nesting) :-
    once(parse('antlacuahtahcitiyāznequizqueh',
          vnc(_, predicate([_, future_embed(
              connective_t(_, _, connective_t(_, _, matrix(yā))), z, nequi)], z), _))).

test(ct_rejects_future_embed_matrix) :-
    \+ ( parse('antlacuahtahcitiyāznequizqueh', P),
         ( P = vnc(_, predicate([_, connective_t(_, _, future_embed(_, _, _))], _), _)
         ; P = vnc(_, predicate([_, connective_t(_, _,
                    connective_t(_, _, future_embed(_, _, _)))], _), _)
         )
       ).

% 28.12: Recursive connective-t compound (cochi-t-pilca-t-o)
test(ct_recursive) :-
    must_parse('ōnicochtipilcatoca').

% 28.9: Reflexivized-intransitive matrix
test(ct_reflexive_matrix) :-
    must_parse('mictimoteca').

% 28.11-28.12: Future-embed compound with a recursive compound embed
test(future_embed_recursive) :-
    must_parse('antlacuahtahcitiyāznequizqueh').

% Negative: the valences must still be enforced for the compound paths.
test(fail_ct_valence_on_intransitive) :-
    must_not_parse('niccochiznequiya').

% --- Chapter 31: nominal embedding -----------------------------------------

% 31.4: Nominal embed compound
test(nnc_nominal_embed) :-
    must_parse('exōtl').

% 31.4: Plural nominal embed compound
test(nnc_plural_nominal_embed) :-
    must_parse('tetlācacihuāmeh').

% --- Chapter 32: affective nouns -------------------------------------------

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

% --- Chapter 35: preterit agentives ----------------------------------------

% 35.5: general-use preterit-agentive -quētl, including reflexive mo-.
test(agentive_reflexive) :-
    once(parse('momachtihquētl',
          nnc(_Pers, predicate(agentive('mo', _, _)), _))).

test(agentive_preterit) :-
    once(parse('micquētl',
          nnc(_Pers, predicate(agentive('', _, _)), _))).

% --- Chapter 44: adverbial particles --------------------------------------

% 44.5.4 Ahmō
test(adverbial_nnc_ahmo) :-
    must_parse('ahmō').

% --- Phonology -------------------------------------------------------------

% Misc: Phonology - Final vowel shortening
test(phonology_final_vowel_shortened) :-
    must_parse('nitemo').

% Misc: Phonology - No shortening
test(phonology_no_shortening) :-
    must_parse('nitemōni').

% --- Lenient macron parsing ------------------------------------------------
% These use Andrews' vocabulary to exercise parse_lenient/3.

% An unmacronized vowel may be lengthened by the lenient parser.
test(lenient_finds_macronized_form) :-
    findall(M-P, parse_lenient('nimitztlazohtla', M, P), Results),
    once(member('nimitztlazohtlā'-_, Results)).

% A macron that is already present stays fixed, and no short-vowel variant
% of that vowel is produced.
test(lenient_respects_explicit_macron) :-
    findall(M, parse_lenient('nimitztlazohtlā', M, _), Results),
    sort(Results, Unique),
    Unique = ['nimitztlazohtlā'].

% A macron in the wrong place does not produce a parse.
test(lenient_rejects_wrong_macron) :-
    findall(M, parse_lenient('nimitztlazōhtla', M, _), Results),
    Results = [].

% The lenient parser also finds both short and long analyses of titlacuaz.
test(lenient_multiple_parses) :-
    findall(M-P, parse_lenient('titlacuaz', M, P), Results),
    once(member('titlacuaz'-_, Results)),
    once(member('titlacuāz'-_, Results)).

:- end_tests(andrews_grammar).

% ============================================================================
% 2. YAN GARCIA, LEARN NAHUATL — VOCABULARY SETS 1-4
% ============================================================================

:- begin_tests(learn_nahuatl).

% Helper predicate for positive tests: fails if no parse is found.
must_parse(Word) :-
    once(parse(Word, _Parse)).

must_parse_all([]).
must_parse_all([Word|Rest]) :-
    ( parse(Word, _) ->
        must_parse_all(Rest)
    ;
        format("Failed to parse vocabulary word: ~w~n", [Word]),
        fail
    ).

% --- Set 1 -----------------------------------------------------------------
% Verb entries are inflected (niccocolia, nictlatīa, nicahhua): the parser
% does not accept bare verb citation forms.

test(learn_nahuatl_set_1) :-
    must_parse_all([
        'ātl', 'ētl', 'ichcatl', 'ohtli', 'pāmitl', 'tocatl', 'cācaoh', 'lemēni', 'tomin', 'nēci',
        'ehēcatl', 'huēyi', 'yayāhuic', 'cē', 'chāhuiztli', 'xoxoctic', 'tzapotl', 'tlālli',
        'cuahuitl', 'yōllo', 'notēco', 'tōnatiuh', 'nocnīuh', 'necuhtli', 'nicnequi', 'niccaqui',
        'cānin', 'mocauhqui', 'quitzacqui', 'tlacualli', 'tēcciztli', 'chichi', 'notlācauh',
        'nocihuāuh', 'tōtōtl', 'quetzalcōātl', 'niccocolia', 'mococoa', 'cōātl', 'niccōhua',
        'nimotlaloa', 'tētiya', 'nictequihuia', 'chichi', 'nictlatīa', 'tōca', 'ahmō', 'quena',
        'nānān', 'tētic', 'noyōllō', 'nonāntzin', 'tlayi', 'āhui', 'cihuātl', 'cuahuitl',
        'tzahtzi', 'nicahhua', 'nēchuitzin', 'mochiuhtoc', 'tlazcāmati', 'tlazohcāmati'
    ]).

% --- Set 2 -----------------------------------------------------------------
% nomich is the possessed form of michin (the absolutive -in drops).

test(learn_nahuatl_set_2) :-
    must_parse_all([
        'coyōtl', 'āmatl', 'camohtli', 'pahtli', 'calli', 'tamalli', 'citlalin', 'michin',
        'mizton', 'cahuayoh', 'patox', 'nomich', 'michimeh', 'tlālli', 'nēmiliztli', 'cihuāpil',
        'cuapuertah', 'tepoztli', 'tlāltipactli', 'tlatzotzontli', 'macehualli', 'coyōmeh',
        'miztonmeh', 'macehualmeh', 'chichimeh', 'ocuilimeh', 'pantalon', 'tepetl', 'oquichpīl',
        'ocuilin', 'āltepētl', 'pitzotl', 'āmoxtli', 'tepetl', 'cē', 'ōme', 'ēyi', 'nāhui',
        'mācuilli', 'chicuacē', 'chicōme', 'chicueyi', 'chicnāhui', 'mahtlactli', 'nitlācatl',
        'titlācatl', 'titlācameh', 'intlācameh', 'tlācameh', 'maxochitl', 'telpocatl', 'ichpocatl',
        'momachtiānih', 'momachtihquētl', 'momachtiquētl', 'papalotl', 'ayotl', 'inin', 'inon', 'zāyōlin',
        'cuecuetztzin', 'nāmāntzin', 'piyo', 'huacax', 'toroh', 'cuatochin'
    ]).

% --- Set 3 -----------------------------------------------------------------

test(learn_nahuatl_set_3) :-
    must_parse_all([
        'tecactli', 'notecac', 'nochichi', 'nochichihuan', 'noyōllō', 'motlayi', 'motlayihuan',
        'noicnihuan', 'īicnihuan', 'toicnīuh', 'īnmōicnīuh', 'inīicniuh', 'inīicnihuan',
        'mocahuayoh', 'inīpitzo', 'motamal', 'nocoton', 'noēuh', 'noāuh', 'icnitl', 'noicnīuh',
        'noāhuacauh', 'notōcah', 'motōcah', 'itocah', 'quēniuhqui', 'īchichi', 'īnāntzin',
        'ītlayi', 'īchan', 'notlālhui', 'nopāhui', 'yēyohtli', 'noyēyohhui', 'cotomitl', 'nocoton',
        'tōcaitl', 'cueitl', 'nocue', 'cualtitoc', 'nimitztlahpalōz', 'tātah', 'notzontecon',
        'noīxtiyōl', 'nonacaz', 'notzoncal', 'noyacatzol', 'noīxxāyac'
    ]).

% --- Set 4 -----------------------------------------------------------------

test(learn_nahuatl_set_4) :-
    must_parse_all([
        'nihuītoni', 'tihuītoni', 'huītoni', 'tihuītonih', 'inhuītonih', 'huītonih', 'moillia',
        'tlacua', 'momachtia', 'motlaloā', 'mococoa', 'nā', 'tā', 'yā', 'tohhuāntin',
        'inmohhuāntin', 'inihhuāntin', 'yahhuāntin', 'tiyāz', 'tehhuātl', 'tehhua', 'teh',
        'tehhuātzin', 'mōmāhuizotzin', 'timotlaloāh', 'intlacuah', 'nēhnemi', 'nēhnemih',
        'mōhmōztla', 'nicochi', 'titlahcuiloa', 'quēmmantzin', 'titlahcuiloah', 'timomachtiāh',
        'etzin', 'ātzin', 'conetzin', 'pīlētzin', 'pīlātzin', 'pilconetzin', 'pilchichitzin',
        'conetzitzin', 'tlāzolli', 'xihuitl', 'zacatl', 'ohtli', 'xalli', 'tlālli', 'zoquitl'
    ]).

% --- Individual vocabulary checks ------------------------------------------

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

test(parse_nanan) :-
    must_parse('nonānān').

test(parse_tetic) :-
    must_parse('tētic').

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

:- end_tests(learn_nahuatl).

% ============================================================================
% 3. FLORENTINE CODEX, BOOK 12, CHAPTER 1 — full-vocabulary regression
% ============================================================================

:- begin_tests(book12_ch1).

% Every vocable in the corrected chapter 1 text must parse strictly.
test(book12_ch1_vocabulary) :-
    forall(member(W, [
        'Ahmo', 'Auh', 'Huītzilōpōchtli', 'In', 'Inīc',
        'Motēuczōma', 'Mēxihcaē', 'Mēxihco', 'Nō', 'Tlacateccan',
        'Tlillan', 'Tzōnmolco', 'Xiuhtēuctli', 'achto', 'aciticac',
        'acitiuh', 'ahmo', 'amāpilol', 'anquimati', 'aocmō',
        'aoctle', 'auh', 'ayac', 'ayamō', 'cacic',
        'caciqueh', 'cacoya', 'calcuahuitl', 'calli', 'calmecac',
        'campa', 'capitulo', 'caquiztic', 'catca', 'ce',
        'cenca', 'centetl', 'centlamantli', 'ceppa', 'chicuacentlamantli',
        'chicuētetl', 'chicōntlamantli', 'chocatiuh', 'chānehqueh', 'cihuātl',
        'conittaque', 'conpoloā', 'cuapitzāhuac', 'cuetlān', 'cēuh',
        'cīcitlāltin', 'diablo', 'ehēcatl', 'españoles', 'huel',
        'huetz', 'huālhuih', 'huālquīza', 'huāltotocah', 'huālācih',
        'huēhca', 'huēi', 'huītecoc', 'ic', 'icpac',
        'ihciuhca', 'ihcuāc', 'ilhuicatitech', 'ilhuicatl', 'ilhuicayōllōtitech',
        'in', 'intlac', 'inīc', 'ipan', 'ittoia',
        'itztiya', 'iuh', 'iuhqui', 'iuhquin', 'ixmachōa',
        'iyōllo', 'ma', 'machiyōtl', 'mahcoquetz', 'mahtlactetl',
        'mahtlactli', 'mahtlacxihuitl', 'malacachtic', 'mamazah', 'mani',
        'miecpa', 'mihtoa', 'mihtoaya', 'mochīuh', 'mocuitlapiltitiuh',
        'momomoloca', 'monomahui', 'monomatlecahui', 'mopitza', 'moquequetztihuitze',
        'mottac', 'motēnextiliaya', 'moyāōchīchīuhtihuitze', 'mācuiltetl', 'māmalhuāztli',
        'mānozo', 'namēchnohuīquiliz', 'neizahuiloya', 'netēnhuītecoya', 'nextic',
        'nicān', 'niman', 'nopilhuāntzitzin', 'nāuhtetl', 'nēcia',
        'nēz', 'nō', 'oc', 'ommotzcalo', 'omōme',
        'on', 'onca', 'oncān', 'onnēcia', 'ontlachix',
        'oyōhualli', 'polihuiya', 'pozōn', 'pēuh', 'pīpixāuhticaca',
        'pīpixāuhtiuh', 'quenin', 'quicēhuiznequia', 'quihtoa', 'quihtoque',
        'quihtotinemi', 'quihuālpoloāya', 'quimilhui', 'quimittac', 'quimittaya',
        'quimotetzahui', 'quimōhuīcaya', 'quin', 'quinmama', 'quinnotz',
        'quinānquilizquia', 'quipozōnalti', 'quitlecahui', 'quittac', 'quittitito',
        'quiāpapachiuh', 'quiātēquiaya', 'quēnmaniyān', 'quīzoticac', 'tehuilacachtic',
        'tepēuhtihuitze', 'tetzammachoc', 'tetzāhuitl', 'teōcalli', 'tilāhuaya',
        'tlacah', 'tlacahuaca', 'tlacahuacac', 'tlacahuacaya', 'tlaciuhqueh',
        'tlacēhuilōz', 'tlahtōa', 'tlamatinimeh', 'tlamatlahuiaya', 'tlapcopa',
        'tlaquetzalli', 'tlatemmachoya', 'tlatla', 'tlatlac', 'tlatlamaya',
        'tlatlatzīn', 'tlatlatzīniliztli', 'tlecuezalōtl', 'tlein', 'tlemiyāhuatl',
        'tlenenepilli', 'tlexōchitl', 'tlācah', 'tlācanetzoltih', 'tlāhuia',
        'tlāhuiliaya', 'tlāhuizcalli', 'tlālli', 'tocuilcoyōtl', 'tonhuih',
        'totlan', 'tzahtzi', 'tzahtzitiuh', 'tzimpātlāhuac', 'tzitzintla',
        'tēzcatl', 'tōnalhuītecoc', 'tōnatiuh', 'tōtōtl', 'xacalli',
        'xapotticac', 'xihuitl', 'xihxittemomolōca', 'xixitin', 'ya',
        'ye', 'yehhuātl', 'yohualnepantlah', 'yohualtica', 'yohuān',
        'yāōyōtl', 'zan', 'ācameh', 'āhuachquiahuia', 'āltepētl',
        'āmoxtli', 'ātl', 'ātlācah', 'ēne', 'ētetl',
        'ēteyetia', 'īcal', 'īcalaquiyampa', 'īcuitlapil', 'īlhuiceh',
        'īnepantla', 'īquīzayanpa', 'ītechpa', 'ītepēyōc', 'īteōpan',
        'ītic', 'ītōcāyōcan', 'īxquich', 'ō', 'ōhuālmoquetzaya',
        'ōhuālpēuh', 'ōhuālquīzaya', 'ōittoc', 'ōmoman', 'ōmpa',
        'ōnoconittac', 'ōnquīz', 'ōntetl', 'ōntetzontecomehqueh', 'ōpoliuh',
        'ōppa', 'ōquimittac'
    ]), once(parse(W, _))).

:- end_tests(book12_ch1).
