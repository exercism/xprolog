

pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(can_chain).

  test(test_alices_garden, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "RC\nGG", alice, [radishes, clover, grass, grass]).

  test(test_different_garden_for_alice, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VC\nRC", alice, [violets, clover, radishes, clover]).

  test(test_bobs_garden, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VVCG\nVVRC", bob, [clover, grass, radishes, clover]).

  test(test_bob_and_charlies_gardens, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VVCCGG\nVVCCGG", bob, [clover, clover, clover, clover]),
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VVCCGG\nVVCCGG", charlie, [grass, grass, grass, grass]).

  test(test_alice, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", alice, [violets, radishes, violets, radishes]).

  test(test_bob, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", bob, [clover, grass, clover, clover]).

  test(test_charlie, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", charlie, [violets, violets, clover, grass]).

  test(test_david, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", david, [radishes, violets, clover, radishes]).

  test(test_eve, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", eve, [clover, grass, radishes, grass]).

  test(test_fred, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", fred, [grass, clover, violets, clover]).

  test(test_ginny, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", ginny, [clover, grass, grass, clover]).

  test(test_harriet, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", harriet, [violets, radishes, radishes, violets]).

  test(test_ileana, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", ileana, [grass, clover, violets, clover]).

  test(test_joseph, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", joseph, [violets, clover, violets, grass]).

  test(test_kincaid, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", kincaid, [grass, clover, clover, grass]).

  test(test_larry, condition(true)) :-
    garden([alice, bob, charlie, david, eve, fred, ginny, harriet, ileana, joseph, kincaid, larry], "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV", larry, [grass, violets, clover, violets]).

  test(test_patricia, condition(true)) :-
    garden([samantha, patricia, xander, roger], "VCRRGVRG\nRVGCCGCV", patricia, [violets, clover, radishes, violets]).

  test(test_roger, condition(true)) :-
    garden([samantha, patricia, xander, roger], "VCRRGVRG\nRVGCCGCV", roger, [radishes, radishes, grass, clover]).

  test(test_samantha, condition(true)) :-
    garden([samantha, patricia, xander, roger], "VCRRGVRG\nRVGCCGCV", samantha, [grass, violets, clover, grass]).

  test(test_xander, condition(true)) :-
    garden([samantha, patricia, xander, roger], "VCRRGVRG\nRVGCCGCV", xander, [radishes, grass, clover, violets]).

  test(test_two_gardens_different_students, condition(true)) :-
    Diagram = "VCRRGVRG\nRVGCCGCV",
    Garden1 = [alice, bob, charlie, dan],
    Garden2 = [bob, charlie, dan, erin],
    garden(Garden1, Diagram, bob, [radishes, radishes, grass, clover],
    garden(Garden2, Diagram, bob, [violets, clover, radishes, violets],
    garden(Garden1, Diagram, charlie, [grass, violets, clover, grass],
    garden(Garden2, Diagram, charlie, [radishes, radishes, grass, clover].

:- end_tests(can_chain).
