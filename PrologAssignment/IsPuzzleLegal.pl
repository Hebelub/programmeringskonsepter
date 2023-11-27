% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/IsPuzzleLegal.pl

:- include('PuzzleTypes.pl').

is_puzzle_valid(StarPuzzle) :-
    % First, validate all star cells in the puzzle
    all_star_cells_valid(StarPuzzle).

% Check that all rows in the puzzle are valid
all_star_cells_valid([]).
all_star_cells_valid([Row | RestRows]) :-
    all_star_cells_in_row_valid(Row),
    all_star_cells_valid(RestRows).

% Check that all star cells in a row are valid
all_star_cells_in_row_valid([]).
all_star_cells_in_row_valid([StarCell | RestStarCells]) :-
    valid_star_cell(StarCell),
    all_star_cells_in_row_valid(RestStarCells).

% Define a valid star cell predicate
valid_star_cell(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    valid_cell(Center).
