:- encoding(utf8).

:- [parser].

% 3.1, 3.2
test_particle :- 
    parse(mā, P), 
    write('Parsings for mā: '), nl,
    write(P), nl, nl.

% 3.3, 3.4
test_particle_with_affixes :- 
    parse(ahtēltzin, P), 
    write('Parsings for ahtēltzin: '), nl,
    write(P), nl, nl.

% 5
test_vnc_intransitive :- 
    parse(tichicāhuaz, P), 
    write('VNC 3 (vacant valence). Parsings for tichicāhuaz: '), nl,
    write(P), nl, nl.

% 6.2
test_vnc_transitive_monadic :- 
    parse(tlachīhuah, P), 
    write('VNC 2 (monadic valence). Parsings for tlachīhua: '), nl,
    write(P), nl, nl.

% 6.3
test_vnc_transitive_dyadic :- 
    parse(namēchtlazohtla, P), 
    write('VNC 1 (dyadic valence). Parsings for namēchtlazohtla: '), nl,
    write(P), nl, nl.

% 6.3
test_vnc_transitive_dyadic_with_variation :- 
    parse(namextlazohtla, P), 
    write('VNC 1 (dyadic valence). Parsings for namextlazohtla: '), nl,
    write(P), nl, nl.

% 6.6
test_vnc_intransitive_reflexive :- 
    parse(mozōmāz, P), 
    write('VNC 1 (reflexive). Parsings for mozōmāz: '), nl,
    write(P), nl, nl.

% 8.1.1
test_intransitive_directionality_to_here :- 
    parse(huālcholoa, P), 
    write('Intransitive directionality "to here". Parsings for huālcholoa: '), nl,
    write(P), nl, nl.

% 8.1.1
test_intransitive_directionality_to_there :- 
    parse(tonpanōzqueh, P), 
    write('Intransitive directionality "to there". Parsings for tonpanōzqueh: '), nl,
    write(P), nl, nl.

% 28.11
test_intransitive_future_embed_compound :- 
    parse(nicochiznequiya, P), 
    write('Future embed compound. Parsings for nicochiznequi: '), nl,
    write(P), nl, nl.

% 28.11
test_transitive_future_embed_compound :- 
    parse(niquihcuilōznequi, P), 
    write('Future embed compound. Parsings for niquihcuilōznequi: '), nl,
    write(P), nl, nl.

% 28.11
test_passive_future_embed_compound :- 
    parse(niquihcuilōlōznequi, P), 
    write('Future embed compound. Parsings for niquihcuilōlōznequi: '), nl,
    write(P), nl, nl.

% misc
test_stem_long_final_vowel_shortened :- 
    parse(nitemo, P), 
    write('Stem with long final vowel (shortened). Parsings for nitemo: '), nl,
    write(P), nl, nl.

% misc
test_stem_long_final_vowel_unshortened :- 
    parse(nitemōni, P), 
    write('Stem with long final vowel (unshortened). Parsings for nitemōni: '), nl,
    write(P), nl, nl.

% negative tests that can be run manually
test_valence_on_intransitive :- 
    parse(nictemō, P), 
    write('Valence on intransitive should fail. Parsings for nictemō: '), nl,
    write(P), nl, nl.

test_valence_on_intransitive_future_embed_compound :- 
    parse(niccochiznequiya, P), 
    write('Future embed compound. Parsings for niccochiznequiya: '), nl,
    write(P), nl, nl.

run_tests :-
    test_particle,
    test_particle_with_affixes,
    test_vnc_transitive_dyadic,
    test_vnc_transitive_dyadic_with_variation,
    test_vnc_transitive_monadic,
    test_vnc_intransitive,
    test_vnc_intransitive_reflexive,
    test_stem_long_final_vowel_shortened,
    test_stem_long_final_vowel_unshortened,
    test_intransitive_directionality_to_here,
    test_intransitive_directionality_to_there,
    test_intransitive_future_embed_compound,
    test_transitive_future_embed_compound,
    test_passive_future_embed_compound.