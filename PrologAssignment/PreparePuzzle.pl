% Prepare each puzzle in the list
prepare_puzzles(Puzzles, PreparedPuzzles) :-
    maplist(prepare_single_puzzle, Puzzles, PreparedPuzzles).

% Prepare a single puzzle
prepare_single_puzzle(Puzzle, PreparedPuzzle) :-
    length(Puzzle, Length),
    writeln('Original Puzzle:'), writeln(Puzzle), % Print the original puzzle
    prepare_puzzle_rows(Puzzle, Length, 1, EdgesPreparedPuzzle),
    writeln('Edges Prepared Puzzle:'), writeln(EdgesPreparedPuzzle), % Print the prepared puzzle
    % unify_reciprocal_connections(EdgesPreparedPuzzle, PreparedPuzzle),
    PreparedPuzzle = EdgesPreparedPuzzle.

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

    % Print out the prepared elements
    writeln('Prepared First Cell:'), writeln(PreparedFirstCell),
    writeln('Prepared Middle Cells:'), writeln(PreparedMiddleCells),
    writeln('Prepared Last Cell:'), writeln(PreparedLastCell),
    
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
    append([X], MiddleRest, Middle),
    (   Rest = [_]
    ->  MiddleRest = []
    ;   middle_elements(Rest, MiddleRest)
    ).

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
    writeln('Unifying Reciprocal connections...'),
    unify_horizontal_connections(Puzzle, HorizontallyUnified),
    writeln('Horizontally Unified Puzzle:'), writeln(HorizontallyUnified).
    % transpose(HorizontallyUnified, Transposed),
    % writeln('Transposed Puzzle:'), writeln(Transposed),
    % unify_horizontal_connections(Transposed, ReUnified),
    % writeln('Re-Horizontally Unified Puzzle:'), writeln(ReUnified),
    % transpose(ReUnified, UnifiedPuzzle).

% Unify horizontal connections of the puzzle
unify_horizontal_connections([], []).
unify_horizontal_connections([Row|Rows], [UnifiedRow|UnifiedRows]) :-
    unify_row_connections(Row, UnifiedRow),
    unify_horizontal_connections(Rows, UnifiedRows).

% Unify connections within a row
unify_row_connections([_], [_]).
unify_row_connections([Cell1, Cell2|Rest], [Cell1|UnifiedRest]) :-
    unify_cells(Cell1, Cell2),
    unify_row_connections([Cell2|Rest], UnifiedRest).

% Unify two adjacent cells (right edge of Cell1 with left edge of Cell2)
unify_cells((_, _, Right, _, _), (_, _, _, _, Left)) :-
    Right = Left.


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



