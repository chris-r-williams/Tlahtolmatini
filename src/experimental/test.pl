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

% Words 1-26
test(parse_ac) :-
    must_parse('āc').

test(parse_ahcan) :-
    must_parse('ahcan').

test(parse_ahci) :-
    must_parse('ahci').

test(parse_ahhua) :-
    must_parse('ahhua').

test(parse_ahmo) :-
    must_parse('ahmo').

test(parse_ahnitlein) :-
    must_parse('ahnitlein').

test(parse_ahtitleihqueh) :-
    must_parse('ahtitleihqueh').

test(parse_ahtle) :-
    must_parse('ahtle').

test(parse_ahtlein) :-
    must_parse('ahtlein').

test(parse_ahui) :-
    must_parse('āhui').

test(parse_ahuitl) :-
    must_parse('āhuitl').

test(parse_altepetl) :-
    must_parse('altepētl').

test(parse_amatl) :-
    must_parse('āmatl').

test(parse_amehhuan) :-
    must_parse('amēhhuān').

test(parse_amehhuantin) :-
    must_parse('amēhhuāntin').

test(parse_amehuah) :-
    must_parse('amēhuah').

test(parse_ammexihcah) :-
    must_parse('ammexihcah').

test(parse_ammiquih) :-
    must_parse('ammiquih').

test(parse_amo) :-
    must_parse('āmo').

test(parse_amoquichtequiuh) :-
    must_parse('āmoquichtequiuh').

test(parse_amoxtli) :-
    must_parse('āmoxtli').

test(parse_ancanah) :-
    must_parse('ancanah').

test(parse_ancateh) :-
    must_parse('ancateh').

test(parse_anchocah) :-
    must_parse('anchocah').

test(parse_ancochih) :-
    must_parse('ancochih').

test(parse_anhuih) :-
    must_parse('anhuih').

:- end_tests(modern_vocabulary_1).

:- begin_tests(modern_vocabulary_2).
% Words 27-52
test(parse_anhuitzeh) :-
    must_parse('anhuitzeh').

test(parse_anquicuah) :-
    must_parse('anquicuah').

test(parse_anquicuih) :-
    must_parse('anquicuih').

test(parse_anquitlazohtlah) :-
    must_parse('anquitlāzohtlah').

test(parse_antlacah) :-
    must_parse('āntlacah').

test(parse_antzahtzih) :-
    must_parse('āntzahtzih').

test(parse_anyolih) :-
    must_parse('ānyolih').

test(parse_aquihqueh) :-
    must_parse('āquihqueh').

test(parse_aquin) :-
    must_parse('āquin').

test(parse_atl) :-
    must_parse('ātl').

test(parse_atzin) :-
    must_parse('ātzin').

test(parse_ayac) :-
    must_parse('āyac').

test(parse_ayotl) :-
    must_parse('āyōtl').

test(parse_ca) :-
    must_parse('cā').

test(parse_cacaoh) :-
    must_parse('cacaōh').

test(parse_cah) :-
    must_parse('cah').

test(parse_cahuayoh) :-
    must_parse('cahuayoh').

test(parse_calli) :-
    must_parse('calli').

test(parse_camohtli) :-
    must_parse('cāmōhtli').

test(parse_campa) :-
    must_parse('cāmpa').

test(parse_can) :-
    must_parse('cān').

test(parse_cana) :-
    must_parse('cāna').

test(parse_canin) :-
    must_parse('canin').

test(parse_cateh) :-
    must_parse('cateh').

test(parse_ce) :-
    must_parse('cē').

test(parse_chahuiztli) :-
    must_parse('chāhuiztli').

:- end_tests(modern_vocabulary_2).

:- begin_tests(modern_vocabulary_3).
% Words 53-78
test(parse_chichi) :-
    must_parse('chichi').

test(parse_chichimeh) :-
    must_parse('chichimeh').

test(parse_chicnahui) :-
    must_parse('chicnāhui').

test(parse_chicome) :-
    must_parse('chicōme').

test(parse_chicuace) :-
    must_parse('chicuācē').

test(parse_chicueyi) :-
    must_parse('chicueyi').

test(parse_choca) :-
    must_parse('chōca').

test(parse_cicitlaltin) :-
    must_parse('cicitlāltin').

test(parse_cihuah) :-
    must_parse('cihuah').

test(parse_cihuapil) :-
    must_parse('cihuāpil').

test(parse_cihuatl) :-
    must_parse('cihuātl').

test(parse_citlalin) :-
    must_parse('citlālin').

test(parse_coatl) :-
    must_parse('cōātl').

test(parse_cochi) :-
    must_parse('cōchi').

test(parse_cocohuah) :-
    must_parse('cocōhuah').

test(parse_cocolia) :-
    must_parse('cocolia').

test(parse_coconeh) :-
    must_parse('cōconeh').

test(parse_cocoyoh) :-
    must_parse('cocōyoh').

test(parse_cohuatl) :-
    must_parse('cohuātl').

test(parse_conetl) :-
    must_parse('cōnetl').

test(parse_conetzin) :-
    must_parse('cōnetzīn').

test(parse_conetzitzin) :-
    must_parse('cōnetzitzīn').

test(parse_cotomitl) :-
    must_parse('cōtomitl').

test(parse_coyomeh) :-
    must_parse('cōyōmeh').

test(parse_coyotl) :-
    must_parse('cōyōtl').

test(parse_cua) :-
    must_parse('cuā').

:- end_tests(modern_vocabulary_3).

:- begin_tests(modern_vocabulary_4).
% Words 79-104
test(parse_cuahuitl) :-
    must_parse('cuāhuitl').

test(parse_cualcan) :-
    must_parse('cualcān').

test(parse_cualli) :-
    must_parse('cualli').

test(parse_cualtitoc) :-
    must_parse('cualtitōc').

test(parse_cuapuertah) :-
    must_parse('cuapuertah').

test(parse_cuatochin) :-
    must_parse('cuatōchīn').

test(parse_cuecuetztzin) :-
    must_parse('cuecuētzīn').

test(parse_cueitl) :-
    must_parse('cuēitl').

test(parse_cuica) :-
    must_parse('cuīca').

test(parse_cuicah) :-
    must_parse('cuīcah').

test(parse_cuix) :-
    must_parse('cuīx').

test(parse_ehecatl) :-
    must_parse('ehecatl').

test(parse_ehua) :-
    must_parse('ēhua').

test(parse_ehuah) :-
    must_parse('ēhuah').

test(parse_etl) :-
    must_parse('ētl').

test(parse_etzin) :-
    must_parse('ētzin').

test(parse_eyi) :-
    must_parse('ēyi').

test(parse_huacax) :-
    must_parse('huācax').

test(parse_hueyi) :-
    must_parse('hueyi').

test(parse_huih) :-
    must_parse('huīh').

test(parse_huitoni) :-
    must_parse('huītōni').

test(parse_huitonih) :-
    must_parse('huītōnih').

test(parse_huitz) :-
    must_parse('huītz').

test(parse_huitzeh) :-
    must_parse('huītzeh').

test(parse_iacal) :-
    must_parse('iācal').

test(parse_ichan) :-
    must_parse('īchan').

:- end_tests(modern_vocabulary_4).

% =============================================================================
% CLASSICAL VOCABULARY SETS (Sets 1-5)
% =============================================================================

:- begin_tests(classical_vocabulary_1).
% Words 105-139 (35 words - Confirmed from JS file)
test(parse_nehua) :-
    must_parse('nehua').

test(parse_tehua) :-
    must_parse('tehua').

test(parse_ehua) :-
    must_parse('ehua').

test(parse_tehuah) :-
    must_parse('tehuah').

test(parse_amehuah) :-
    must_parse('amehuah').

test(parse_ehuah) :-
    must_parse('ehuah').

test(parse_nimiqui) :-
    must_parse('nimiqui').

test(parse_timiqui) :-
    must_parse('timiqui').

test(parse_miqui) :-
    must_parse('miqui').

test(parse_timiquih) :-
    must_parse('timiquih').

test(parse_ammiquih) :-
    must_parse('ammiquih').

test(parse_miquih) :-
    must_parse('miquih').

test(parse_nichoca) :-
    must_parse('nichoca').

test(parse_anchocah) :-
    must_parse('anchocah').

test(parse_niyoli) :-
    must_parse('niyoli').

test(parse_anyolih) :-
    must_parse('anyolih').

test(parse_nitzahtzi) :-
    must_parse('nitzahtzi').

test(parse_antzahtzih) :-
    must_parse('antzahtzih').

test(parse_nicochi) :-
    must_parse('nicochi').

test(parse_ancochih) :-
    must_parse('ancochih').

test(parse_cochi) :-
    must_parse('cochi').

test(parse_in) :-
    must_parse('in').

test(parse_cihuatl) :-
    must_parse('cihuātl').

test(parse_cuica) :-
    must_parse('cuica').

test(parse_cuicah) :-
    must_parse('cuicah').

test(parse_cihuah) :-
    must_parse('cihuah').

test(parse_tlacatl) :-
    must_parse('tlācatl').

test(parse_tlacah) :-
    must_parse('tlācah').

test(parse_mexihcatl) :-
    must_parse('mexihcatl').

test(parse_mexihcah) :-
    must_parse('mexihcah').

test(parse_choca) :-
    must_parse('choca').

test(parse_nicuica) :-
    must_parse('nicuica').

test(parse_titzahtzih) :-
    must_parse('titzahtzih').

test(parse_ticochi) :-
    must_parse('ticochi').

test(parse_yolih) :-
    must_parse('yolih').

:- end_tests(classical_vocabulary_1).

:- begin_tests(classical_vocabulary_2).
% Words 140-179 (40 words - Confirmed from JS file)
test(parse_nimexihcatl) :-
    must_parse('nimexihcatl').

test(parse_timexihcatl) :-
    must_parse('timexihcatl').

test(parse_mexihcatl_2) :-
    must_parse('mexihcatl').

test(parse_timexihcah) :-
    must_parse('timexihcah').

test(parse_ammexihcah) :-
    must_parse('ammexihcah').

test(parse_mexihcah_2) :-
    must_parse('mexihcah').

test(parse_notomitl) :-
    must_parse('notomitl').

test(parse_totomih) :-
    must_parse('totomih').

test(parse_antlacah) :-
    must_parse('antlācah').

test(parse_otomitl) :-
    must_parse('otomitl').

test(parse_oquichtli) :-
    must_parse('oquichtli').

test(parse_tochtli) :-
    must_parse('tochtli').

test(parse_pilli) :-
    must_parse('pilli').

test(parse_calli_2) :-
    must_parse('calli').

test(parse_michin) :-
    must_parse('michin').

test(parse_chichi_2) :-
    must_parse('chichi').

test(parse_teotl) :-
    must_parse('teōtl').

test(parse_teteoh) :-
    must_parse('teteōh').

test(parse_cohuatl_2) :-
    must_parse('cohuātl').

test(parse_coatl_2) :-
    must_parse('cōātl').

test(parse_tenamitl) :-
    must_parse('tenāmitl').

test(parse_tepilolli) :-
    must_parse('tepilolli').

test(parse_cuitlatl) :-
    must_parse('cuitlatl').

test(parse_cihuapilli) :-
    must_parse('cihuāpilli').

test(parse_cihuapil_2) :-
    must_parse('cihuāpil').

test(parse_oquichpilli) :-
    must_parse('oquichpilli').

test(parse_oquichpil) :-
    must_parse('oquichpil').

test(parse_oquichpilmej) :-
    must_parse('oquichpilmej').

test(parse_piltontli) :-
    must_parse('piltōntli').

test(parse_piltsintli) :-
    must_parse('piltsīntli').

test(parse_pilmeh) :-
    must_parse('pilmeh').

test(parse_piltsintin) :-
    must_parse('piltsīntin').

test(parse_piltsitsintin) :-
    must_parse('piltsitsīntin').

test(parse_tlatqui) :-
    must_parse('tlatqui').

test(parse_mizton) :-
    must_parse('miztōn').

test(parse_miztonmeh) :-
    must_parse('miztōnmeh').

test(parse_ohtli) :-
    must_parse('ōhtli').

test(parse_xalli) :-
    must_parse('xalli').

test(parse_tlalli) :-
    must_parse('tlalli').

test(parse_zoquitl) :-
    must_parse('zoquitl').

:- end_tests(classical_vocabulary_2).

:- begin_tests(classical_vocabulary_3).
% Words 180-197 (18 words - Remaining Classical words)
test(parse_titehhuān) :-
    must_parse('tītehhuān').

test(parse_amehhuāntin) :-
    must_parse('amehhuāntin').

test(parse_tehhuatl) :-
    must_parse('tehhuatl').

test(parse_nehhuāntin) :-
    must_parse('nehhuāntin').

test(parse_neh) :-
    must_parse('neh').

test(parse_tehhuatl_2) :-
    must_parse('tēhhuatl').

test(parse_amehhuatl) :-
    must_parse('amehhuatl').

test(parse_macehualli) :-
    must_parse('mācēhualli').

test(parse_macehualmeh) :-
    must_parse('mācēhualmeh').

test(parse_icnitl) :-
    must_parse('īcnitl').

test(parse_amoxtli_2) :-
    must_parse('āmōxtli').

test(parse_camohtli_2) :-
    must_parse('cāmōhtli').

test(parse_coyotl_3) :-
    must_parse('cōyōtl').

test(parse_campa_2) :-
    must_parse('cāmpa').

test(parse_aquin_2) :-
    must_parse('āquin').

test(parse_aquihqueh_2) :-
    must_parse('āquihqueh').

test(parse_ayac_2) :-
    must_parse('āyac').

test(parse_ahtlein_2) :-
    must_parse('āhtleīn').

:- end_tests(classical_vocabulary_3).

:- begin_tests(classical_vocabulary_4).
% Words 198-215 (18 words - Remaining Classical words)
test(parse_ce_2) :-
    must_parse('cē').

test(parse_chicuace_2) :-
    must_parse('chicuācē').

test(parse_chicome_2) :-
    must_parse('chicōme').

test(parse_chicueyi_2) :-
    must_parse('chicueyi').

test(parse_chicnahui_2) :-
    must_parse('chicnāhui').

test(parse_mahtlactli) :-
    must_parse('mahtlāctli').

test(parse_macuilli) :-
    must_parse('mācuīlli').

test(parse_nahui) :-
    must_parse('nāhui').

test(parse_eyi_2) :-
    must_parse('ēyi').

test(parse_tlattalli) :-
    must_parse('tlāttalli').

test(parse_tocihuaxochitl) :-
    must_parse('tōcihuāxōchitl').

test(parse_maxochitl) :-
    must_parse('maxōchitl').

test(parse_ticochi_2) :-
    must_parse('tīcōchi').

test(parse_tlachcaquiliztli) :-
    must_parse('tlachcaquiliztli').

test(parse_nicana) :-
    must_parse('nīcāna').

test(parse_ticana) :-
    must_parse('tīcāna').

test(parse_ancana) :-
    must_parse('āncāna').

test(parse_nicaqui) :-
    must_parse('nīcaqui').

:- end_tests(classical_vocabulary_4).

:- begin_tests(classical_vocabulary_5).
% Words 216-233 (18 words - Remaining Classical words)
test(parse_ticaqui) :-
    must_parse('tīcaqui').

test(parse_ancaquih) :-
    must_parse('āncāquih').

test(parse_quicaqui) :-
    must_parse('quicāqui').

test(parse_quicaquih) :-
    must_parse('quicāquih').

test(parse_nitlacaqui) :-
    must_parse('nītlacaqui').

test(parse_nitlatoa) :-
    must_parse('nītlātoa').

test(parse_titlatoa) :-
    must_parse('tītlātoa').

test(parse_antlahtoa) :-
    must_parse('āntlahtoa').

test(parse_itlatoa) :-
    must_parse('itlātoa').

test(parse_itlatoah) :-
    must_parse('itlātoah').

test(parse_niquihtoa) :-
    must_parse('nīquīhtoa').

test(parse_tiquihtoa) :-
    must_parse('tīquīhtoa').

test(parse_ancihtoah) :-
    must_parse('āncīhtoah').

test(parse_quihtoa) :-
    must_parse('quīhtoa').

test(parse_quihtoah) :-
    must_parse('quīhtoah').

test(parse_nicohua) :-
    must_parse('nicōhua').

test(parse_ticohua) :-
    must_parse('ticōhua').

test(parse_ancohuah) :-
    must_parse('ancōhuah').

:- end_tests(classical_vocabulary_5).