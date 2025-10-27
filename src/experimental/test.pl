%:- encoding(utf8).

%:- [parser].

% 3.1, 3.2
test_particle :- 
    findall(P, parse(mā, P), Parses),
    write('Parsings for mā: '), nl,
    write_parses(Parses).

% 3.3, 3.4
test_particle_with_prefix :- 
    findall(P, parse(ahtēl, P), Parses),
    write('Parsings for ahtēl: '), nl,
    write_parses(Parses).

% 3.3, 3.4
test_particle_with_suffix :- 
    findall(P, parse(tēltzin, P), Parses),
    write('Parsings for tēltzin: '), nl,
    write_parses(Parses).

% 5
test_vnc_intransitive :- 
    findall(P, parse(tichicāhuaz, P), Parses),
    write('VNC 3 (vacant valence). Parsings for tichicāhuaz: '), nl,
    write_parses(Parses).

% 6.2
test_vnc_transitive_monadic :- 
    findall(P, parse(tlachīhuah, P), Parses),
    write('VNC 2 (monadic valence). Parsings for tlachīhuah: '), nl,
    write_parses(Parses).

% 6.3
test_vnc_transitive_dyadic :- 
    findall(P, parse(nimitztlazohtla, P), Parses),
    write('VNC 1 (dyadic valence). Parsings for nimitztlazohtla: '), nl,
    write_parses(Parses).

% TODO
test_vnc_with_negativizing_particle :- 
    findall(P, parse(ahnamēchtlazohtla, P), Parses),
    write('VNC 1 (dyadic valence). Parsings for ahnamēchtlazohtla: '), nl,
    write_parses(Parses).

% 6.3
test_vnc_transitive_dyadic_with_variation :- 
    findall(P, parse(namextlazohtla, P), Parses),
    write('VNC 1 (dyadic valence). Parsings for namextlazohtla: '), nl,
    write_parses(Parses).

% 6.6
test_vnc_intransitive_reflexive :- 
    findall(P, parse(mozōmāz, P), Parses),
    write('VNC 1 (reflexive). Parsings for mozōmāz: '), nl,
    write_parses(Parses).

% 8.1.1
test_intransitive_directionality_to_here :- 
    findall(P, parse(huālcholoa, P), Parses),
    write('Intransitive directionality "to here". Parsings for huālcholoa: '), nl,
    write_parses(Parses).

% 8.1.1
test_intransitive_directionality_to_there :- 
    findall(P, parse(tonpanōzqueh, P), Parses),
    write('Intransitive directionality "to there". Parsings for tonpanōzqueh: '), nl,
    write_parses(Parses).

% 8.1.1
test_transitive_directionality_to_here :- 
    findall(P, parse(niconnequi, P), Parses),
    write('Intransitive directionality "to here". Parsings for niconnequi: '), nl,
    write_parses(Parses).

% 8.1.1
test_transitive_directionality_to_there :- 
    findall(P, parse(nihuālmonequi, P), Parses),
    write('Intransitive directionality "to there". Parsings for nihuālmonequi: '), nl,
    write_parses(Parses).

% 8.1.3
test_vnc_with_antecessive_and_negativizing_particles :- 
    findall(P, parse(ahōnamēchtlazohtla, P), Parses),
    write('VNC 1 (dyadic valence). Parsings for ahōnamēchtlazohtla: '), nl,
    write_parses(Parses).

% 14.2
test_absolutive_stem_nnc_in :-
    findall(P, parse(michin, P), Parses),
    write('Absolutive stem NNC. Parsings for michin: '), nl,
    write_parses(Parses).

% 14.2
test_absolutive_stem_nnc_zero :-
    findall(P, parse(chichi, P), Parses),
    write('Absolutive stem NNC. Parsings for chichi: '), nl,
    write_parses(Parses).

% 14.3.1
test_absolutive_stem_nnc_affinity_singular :-
    findall(P, parse(cācalli, P), Parses),
    write('Absolutive stem NNC, affinity singular. Parsings for cācalli: '), nl,
    write_parses(Parses).

% 14.3.2
test_absolutive_stem_nnc_distributive_singular :-
    findall(P, parse(cahcalli, P), Parses),
    write('Absolutive stem NNC, distributive singular. Parsings for cahcalli: '), nl,
    write_parses(Parses).

% 14.4
test_absolutive_stem_nnc_with_singular_subject:-
    findall(P, parse(ticihuātl, P), Parses),
    write('Absolutive stem NNC, singular subject. Parsings for ticihuātl: '), nl,
    write_parses(Parses).

% 14.5
test_absolutive_stem_nnc_with_plural_subject:-
    findall(P, parse(titlācah, P), Parses),
    write('Absolutive stem NNC, plural subject. Parsings for titlācah: '), nl,
    write_parses(Parses).

% 28.11
test_intransitive_future_embed_compound :- 
    findall(P, parse(nicochiznequiya, P), Parses),
    write('Future embed compound. Parsings for nicochiznequiya: '), nl,
    write_parses(Parses).

% 28.11
test_transitive_future_embed_compound :- 
    findall(P, parse(niquihcuilōznequi, P), Parses),
    write('Future embed compound. Parsings for niquihcuilōznequi: '), nl,
    write_parses(Parses).

% 28.11
test_passive_future_embed_compound :- 
    findall(P, parse(niquihcuilōlōznequi, P), Parses),
    write('Future embed compound. Parsings for niquihcuilōlōznequi: '), nl,
    write_parses(Parses).

% misc
test_stem_long_final_vowel_shortened :- 
    findall(P, parse(nitemo, P), Parses),
    write('Stem with long final vowel (shortened). Parsings for nitemo: '), nl,
    write_parses(Parses).

% misc
test_stem_long_final_vowel_unshortened :- 
    findall(P, parse(nitemōni, P), Parses),
    write('Stem with long final vowel (unshortened). Parsings for nitemōni: '), nl,
    write_parses(Parses).

% negative tests that can be run manually
test_valence_on_intransitive :- 
    findall(P, parse(nictemō, P), Parses),
    write('Valence on intransitive should fail. Parsings for nictemō: '), nl,
    write_parses(Parses).

test_valence_on_intransitive_future_embed_compound :- 
    findall(P, parse(niccochiznequiya, P), Parses),
    write('Future embed compound. Parsings for niccochiznequiya: '), nl,
    write_parses(Parses).

% Helper to write parse results
write_parses([]) :- 
    write('No parses found.'), nl, nl, !.
write_parses([P|Ps]) :- 
    write('  '), write(P), nl,
    write_parses(Ps),
    nl.

run_tests :-
    write('Running all tests...'), nl, nl,
    test_particle,
    test_particle_with_prefix,
    test_particle_with_suffix,
    test_vnc_intransitive,
    test_vnc_transitive_monadic,
    test_vnc_transitive_dyadic,
    test_vnc_with_negativizing_particle,
    test_vnc_transitive_dyadic_with_variation,
    test_vnc_intransitive_reflexive,
    test_intransitive_directionality_to_here,
    test_intransitive_directionality_to_there,
    test_transitive_directionality_to_here,
    test_transitive_directionality_to_there,
    test_vnc_with_antecessive_and_negativizing_particles,
    test_absolutive_stem_nnc_in,
    test_absolutive_stem_nnc_zero,
    test_absolutive_stem_nnc_affinity_singular,
    test_absolutive_stem_nnc_distributive_singular,
    test_absolutive_stem_nnc_with_singular_subject,
    test_absolutive_stem_nnc_with_plural_subject,
    test_intransitive_future_embed_compound,
    test_transitive_future_embed_compound,
    test_passive_future_embed_compound,
    test_stem_long_final_vowel_shortened,
    test_stem_long_final_vowel_unshortened,
    write('All tests completed.'), nl.