% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PreparePuzzle.pl

% Prepare each puzzle in the list
prepare_puzzles(Puzzles, PreparedPuzzles) :-
    maplist(prepare_single_puzzle, Puzzles, PreparedPuzzles).

% Prepare a single puzzle
prepare_single_puzzle(Puzzle, PreparedPuzzle) :-
    length(Puzzle, Length),
    prepare_puzzle_rows(Puzzle, Length, 1, EdgesPreparedPuzzle),
    unify_reciprocal_connections(EdgesPreparedPuzzle, PreparedPuzzle).

% Recursive predicate to prepare each row of the puzzle
prepare_puzzle_rows([], _, _, []).
prepare_puzzle_rows([Row|Rest], Length, Index, [PreparedRow|PreparedRest]) :-
    prepare_row(Length, Row, Index, PreparedRow),
    NextIndex is Index + 1,
    prepare_puzzle_rows(Rest, Length, NextIndex, PreparedRest).

% Prepare each row of the puzzle
prepare_row(Length, Row, Index, FinalRow) :-
    IsTopRow = (Index == 1),
    IsBottomRow = (Index == Length),

    prepare_first_cell(Row, IsTopRow, IsBottomRow, [PreparedFirstCell]),
    prepare_middle_cells(Row, IsTopRow, IsBottomRow, PreparedMiddleCells),
    prepare_last_cell(Row, IsTopRow, IsBottomRow, [PreparedLastCell]),
    
    % Construct the FinalRow
    append([PreparedFirstCell | PreparedMiddleCells], [PreparedLastCell], FinalRow).

% Prepare the first cell (Left edge)
prepare_first_cell([(Type, Up, Right, Down, _)|_], IsTopRow, IsBottomRow, PreparedFirstCell) :-
    (IsTopRow -> TopConnection = false; TopConnection = Up),
    (IsBottomRow -> BottomConnection = false; BottomConnection = Down),
    PreparedFirstCell = [(Type, TopConnection, Right, BottomConnection, false)].

% Prepare the middle cells
prepare_middle_cells(Row, IsTopRow, IsBottomRow, PreparedMiddleCells) :-
    middle_elements(Row, MiddleCells),
    prepare_each_middle_cell(MiddleCells, IsTopRow, IsBottomRow, PreparedMiddleCells).

% Extract middle elements of a list (excluding first and last)
middle_elements([], []).
middle_elements([_], []).
middle_elements([_, _], []).
middle_elements([_, X | Rest], Middle) :-
    append(MiddleRest, [_], Rest),  % Ensure the last element is excluded
    Middle = [X | MiddleRest].

% Prepare each cell in the middle cell list
prepare_each_middle_cell([], _, _, []).
prepare_each_middle_cell([(Type, Up, Right, Down, Left) | Rest], IsTopRow, IsBottomRow, [PreparedCell | PreparedRest]) :-
    (IsTopRow -> TopConnection = false; TopConnection = Up),
    (IsBottomRow -> BottomConnection = false; BottomConnection = Down),
    PreparedCell = (Type, TopConnection, Right, BottomConnection, Left),
    prepare_each_middle_cell(Rest, IsTopRow, IsBottomRow, PreparedRest).

% Prepare the last cell (Right edge)
prepare_last_cell(Row, IsTopRow, IsBottomRow, PreparedLastCell) :-
    last_cell(Row, LastCell),
    prepare_single_last_cell(LastCell, IsTopRow, IsBottomRow, PreparedLastCell).

% Extract the last cell from the row
last_cell([Cell], Cell).
last_cell([_|Rest], LastCell) :-
    last_cell(Rest, LastCell).

% Prepare a single last cell
prepare_single_last_cell((Type, Up, _, Down, Left), IsTopRow, IsBottomRow, [(Type, TopConnection, false, BottomConnection, Left)]) :-
    (IsTopRow -> TopConnection = false; TopConnection = Up),
    (IsBottomRow -> BottomConnection = false; BottomConnection = Down).



% UNIFICATION

% Unify reciprocal connections in a puzzle
unify_reciprocal_connections(Puzzle, UnifiedPuzzle) :-
    unify_horizontal_connections(Puzzle, horizontal, HorizontallyUnified),
    transpose(HorizontallyUnified, Transposed),
    unify_horizontal_connections(Transposed, vertical, ReUnified),
    transpose(ReUnified, UnifiedPuzzle).

% Unify horizontal connections of the puzzle, given direction
unify_horizontal_connections([], _, []).
unify_horizontal_connections([Row|Rows], Direction, [UnifiedRow|UnifiedRows]) :-
    unify_row_connections(Row, Direction, UnifiedRow),
    unify_horizontal_connections(Rows, Direction, UnifiedRows).

% Unify connections within a row
unify_row_connections([], _, []).
unify_row_connections([Cell], _, [Cell]).
unify_row_connections([Cell1, Cell2|Rest], Direction, [Cell1|UnifiedRest]) :-
    unify_cells(Cell1, Cell2, Direction),
    unify_row_connections([Cell2|Rest], Direction, UnifiedRest).

% Unify two adjacent cells based on direction
unify_cells((Type1, Up1, Right1, Down1, Left1), (Type2, Up2, Right2, Down2, Left2), horizontal) :-
    Right1 = Left2.
unify_cells((Type1, Up1, Right1, Down1, Left1), (Type2, Up2, Right2, Down2, Left2), vertical) :-
    Down1 = Up2.

% Transpose a matrix (grid)
transpose([], []).
transpose([F|Fs], Ts) :-
    transpose(F, [F|Fs], Ts).

transpose([], _, []).
transpose([_|Rs], Ms, [Ts|Tss]) :-
    lists_firsts_rests(Ms, Ts, Ms1),
    transpose(Rs, Ms1, Tss).

% Extract the first elements of each list and the remainders
lists_firsts_rests([], [], []).
lists_firsts_rests([[F|Os]|Rest], [F|Fs], [Os|Oss]) :-
    lists_firsts_rests(Rest, Fs, Oss).


% UNIFY OPOSITES FOR WHITE CELLS
