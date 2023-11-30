% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/IsPuzzleLegal.pl

:- include('PuzzleTypes.pl').
:- include('PrintPuzzle.pl').
:- include('ExtractFromStarPuzzle.pl').

% Main predicate to validate the puzzle
is_puzzle_valid(Stars) :-
    all_star_cells_in_row_valid(Stars).

% Check that all star cells in a row are valid
all_star_cells_in_row_valid([]).
all_star_cells_in_row_valid([StarCell | RestStarCells]) :-
    % Print length of RestStarCells
    length(RestStarCells, Length),

    % write('Depth: '), write(Length), write(':'), nl,
    % write('Star Cell: '), write(StarCell), nl,
    
    valid_star(StarCell),

    % print_star(StarCell),
    % sleep(1),

    all_star_cells_in_row_valid(RestStarCells).

% % Define a valid star cell predicate
% valid_star_cell(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
%     valid_cell(AdjUp),
%     valid_cell(AdjRight),
%     valid_cell(AdjDown),
%     valid_cell(AdjLeft),
%     valid_star(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)).
%     % valid_star_cell_center(Center),
%     % determine_star_center(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft), NewCenter),
%     % Center = NewCenter.

% Print the current state of the puzzle
print_star_puzzle(Puzzle) :-
    writeln('Current Puzzle State:'),
    extract_center_elements(Puzzle, CenterElements), 
    print_puzzle(CenterElements),
    !.

% Prompt the user to press a key to continue
prompt_user_to_continue :-
    writeln('Press Enter to continue...'),
    get_char(_).
