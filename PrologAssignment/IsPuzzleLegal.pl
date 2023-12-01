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


% % Copy a star cell with new variables
% copy_star_cell(star(Center, Up, Down, Left, Right), star(CopiedCenter, CopiedUp, CopiedDown, CopiedLeft, CopiedRight)) :-
%     copy_term(Center, CopiedCenter),
%     copy_term(Up, CopiedUp),
%     copy_term(Down, CopiedDown),
%     copy_term(Left, CopiedLeft),
%     copy_term(Right, CopiedRight).