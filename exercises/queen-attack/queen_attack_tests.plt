 % Please visit http://exercism.io/languages/prolog/installing
% for instructions on setting up prolog.
% Visit http://exercism.io/languages/prolog/tests
% for help running the tests for prolog exercises.

% The goal below allows tests to be skipped
% unless the "--all" flag is passed at
% the command line.

pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(create_tests).

    test(valid_position, condition(true)) :-
         create((2,2)).

    test(must_have_positive_row, condition(false)) :-
      create((-2,2)).

    test(row_smaller_than_board_size, condition(false)) :-
      create((8,4)).

    test(must_have_positive_column, condition(false)) :-
      create((2,-2)).

    test(column_smaller_than_board_size, condition(false)) :-
      create((4,8)).

:- end_tests(create_tests).


:- begin_tests(attack_tests).

    test(cant_attack, condition(false)) :-
      attack((2,4), (6,6)).

    test(attack_on_same_row, condition(true)) :-
      attack((2,4), (2,6)).

    test(attack_same_column, condition(true)) :-
      attack((4,5), (2,5)).

    test(attack_first_diagonal, condition(true)) :-
      attack((2,2), (0,4)).

    test(attack_second_diagonal, condition(true)) :-
      attack((2,2), (3,1)).

    test(attack_third_diagonal, condition(true)) :-
      attack((2,2), (1,1)).

    test(attack_fourth_diagonal, condition(true)) :-
      attack((2,2), (5,5)).

:- end_tests(attack_tests).
