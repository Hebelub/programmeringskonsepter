% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/IsPuzzleLegal.pl

:- include('PuzzleTypes.pl').

is_puzzle_valid(StarPuzzle) :-
    % First, validate all star cells in the puzzle
    all_star_cells_valid(StarPuzzle).

% Check that all star cells in the puzzle are valid
all_star_cells_valid([]).
all_star_cells_valid([StarCell | RestStarCells]) :-
    write('Checking star cell: '), write(StarCell), nl,
    valid_star_cell(StarCell),
    all_star_cells_valid(RestStarCells).

% Define a valid star cell predicate
valid_star_cell(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    valid_center_cell(Center).

% Define what constitutes a valid center cell
valid_center_cell(Center) :-
    % This is a placeholder for whatever conditions a center cell must satisfy.
    % For example:
    valid_cell(Center).
