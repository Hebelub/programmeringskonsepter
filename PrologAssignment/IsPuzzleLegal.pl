% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/IsPuzzleLegal.pl

:- include('PuzzleTypes.pl').
:- include('PrintPuzzle.pl').
:- include('ExtractFromStarPuzzle.pl').

% Main predicate to validate the puzzle
is_puzzle_valid(StarPuzzle) :-
    % Start by printing the initial puzzle
    %print_star_puzzle(StarPuzzle),
    % Validate all star cells in the puzzle
    all_star_cells_valid(StarPuzzle, StarPuzzle).

% Check that all rows in the puzzle are valid
all_star_cells_valid([], FullPuzzle).
all_star_cells_valid([Row | RestRows], FullPuzzle) :-
    % length(RestRows, L),
    % write(L),
    all_star_cells_in_row_valid(Row),
    % Print the current state of the puzzle and wait for user input
    %write('Debug puzzle: '), writeln(FullPuzzle), nl,
    %not(not(print_star_puzzle(FullPuzzle))),
    %write('Full Puzzle: '), writeln(FullPuzzle), nl,
    % extract_center_elements(FullPuzzle, CenterElements),
    %write('Only Center Elements: '), writeln(CenterElements), nl,
    %prompt_user_to_continue,
    all_star_cells_valid(RestRows, FullPuzzle).

% Check that all star cells in a row are valid
all_star_cells_in_row_valid([]).
all_star_cells_in_row_valid([StarCell | RestStarCells]) :-
    valid_star(StarCell),
    %valid_star_cell(StarCell),
    all_star_cells_in_row_valid(RestStarCells).

% Define a valid star cell predicate
valid_star_cell(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    determine_star_center(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft), NewCenter),
    Center = NewCenter.

% Print the current state of the puzzle
print_star_puzzle(Puzzle) :-
    % Implement your printing logic here. 
    % For example:
    writeln('Current Puzzle State:'),
    extract_center_elements(Puzzle, CenterElements), 
    print_puzzle(CenterElements),
    !.

% Prompt the user to press a key to continue
prompt_user_to_continue :-
    writeln('Press Enter to continue...'),
    get_char(_).
