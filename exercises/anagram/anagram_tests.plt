pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(anagram).

    test(no_matches, condition(true)) :-
        anagram("diaper", [ "hello", "world", "zombies", "pants"], Result),
        is_list(Result).

    test(detects_simple_anagram, condition(true)) :-
        anagram("ant", ["tan", "stand", "at"], Xs),
        Xs == ["tan"].

    test(does_not_detect_false_positives, condition(pending)) :-
        anagram("galea", ["eagle"], Xs),
        Xs == [].

    test(detects_multiple_anagrams, condition(pending)) :-
        anagram("master", ["stream", "pigeon", "maters"], Xs),
        Xs == ["stream", "maters"].

    test(does_not_detect_anagram_subsets, condition(pending)) :-
        anagram("good", ["dog", "goody"], Xs),
        Xs == [].

    test(detects_anagram, condition(pending)) :-
        anagram("listen", ["enlists", "google", "inlets", "banana"], Xs),
        Xs == ["inlets"].

    test(detects_multiple_anagrams, condition(pending)) :-
        anagram("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"], Xs),
        Xs == ["gallery", "regally", "largely"].

    test(does_not_detect_identical_words, condition(pending)) :-
        anagram("corn", ["corn", "dark", "Corn", "rank", "CORN", "cron", "park"], Xs),
        Xs == ["cron"].

    test(does_not_detect_nonanagrams_with_identical_checksum, condition(pending)) :-
        anagram("mass", ["last"], Xs),
        Xs == [].

    test(detects_anagrams_case_insensitively, condition(pending)) :-
        anagram("Orchestra", ["cashregister", "Carthorse", "radishes"], Xs),
        Xs == ["Carthorse"].

    test(detects_anagrams_using_case_insensitive_subject, condition(pending)) :-
        anagram("Orchestra", ["cashregister", "carthorse", "radishes"], Xs),
        Xs == ["carthorse"].

    test(detects_anagrams_using_case_insensitive_possible_matches, condition(pending)) :-
        anagram("orchestra", ["cashregister", "Carthorse", "radishes"], Xs),
        Xs == ["Carthorse"].

    test(does_not_detect_a_word_as_its_own_anagram, condition(pending)) :-
        anagram("banana", ["Banana"], Xs),
        Xs == [].

    test(does_not_detect_a_anagram_if_the_original_word_is_repeated, condition(pending)) :-
        anagram("go", ["go Go GO"], Xs),
        Xs == [].

    test(anagrams_must_use_all_letters_exactly_once, condition(pending)) :-
        anagram("tapper", ["patter"], Xs),
        Xs == [].

    test(detects_unicode_anagrams, condition(pending)) :-
        anagram("ΑΒΓ", ["ΒΓΑ", "ΒΓΔ", "γβα"], Xs),
        Xs == ["ΒΓΑ", "γβα"].

    test(eliminates_misleading_unicode_anagrams, condition(pending)) :-
        anagram("ΑΒΓ", ["ABΓ"], Xs),
        Xs == [].

    test(capital_word_is_not_own_anagram, condition(pending)) :-
        anagram("BANANA", ["Banana"], Xs),
        Xs == [].

:- end_tests(anagram).
