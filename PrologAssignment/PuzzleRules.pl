% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleRules.pl

:- include('PuzzleTypes.pl').

apply_rules(Puzzle, RulesApplied) :-
    % First, validate all cells in the puzzle
    all_cells_valid(Puzzle),
    
    % Then, apply your solving logic
    % Replace the following line with your puzzle-solving algorithm
    RulesApplied = Puzzle. % Placeholder for actual solving logic

% Check that all cells in the puzzle are valid
all_cells_valid([]).
all_cells_valid([Row|Rows]) :-
    % Debug:
    all_cells_in_row_valid(Row),
    all_cells_valid(Rows).

% Check that all cells in a row are valid
all_cells_in_row_valid([]).
all_cells_in_row_valid([Cell|Cells]) :-
    % Debug:
    write('Checking cell: '), write(Cell), nl,
    valid_cell(Cell),
    all_cells_in_row_valid(Cells).

