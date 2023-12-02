% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/IsPuzzleLegal.pl

:- include('PuzzleTypes.pl').
:- include('PrintPuzzle.pl').
:- include('ExtractFromStarPuzzle.pl').

% Main predicate to validate the puzzle
is_puzzle_valid(Stars) :-
    all_stars_valid(Stars).

% Check that all star cells in a row are valid
all_stars_valid([]).
all_stars_valid([StarCell | RestStarCells]) :-

    % Check if the original star cell is valid
    valid_star(StarCell),

    % Proceed with the rest of the star cells
    all_stars_valid(RestStarCells).
