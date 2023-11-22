% Prepare each puzzle in the list
prepare_puzzles(Puzzles, PreparedPuzzles) :-
    maplist(prepare_single_puzzle, Puzzles, PreparedPuzzles).

% Prepare a single puzzle
prepare_single_puzzle(Puzzle, PreparedPuzzle) :-
    length(Puzzle, Length),
    writeln('Original Puzzle:'), writeln(Puzzle), % Print the original puzzle
    prepare_puzzle_rows(Puzzle, Length, 1, PreparedPuzzle),
    writeln('Prepared Puzzle:'), writeln(PreparedPuzzle). % Print the prepared puzzle

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
prepare_middle_cells([], _, _, []).
prepare_middle_cells([(Type, Up, Right, Down, Left)|Rest], IsTopRow, IsBottomRow, [PreparedCell|PreparedRest]) :-
    (IsTopRow -> TopConnection = false; TopConnection = Up),
    (IsBottomRow -> BottomConnection = false; BottomConnection = Down),
    PreparedCell = (Type, TopConnection, Right, BottomConnection, Left),
    prepare_middle_cells(Rest, IsTopRow, IsBottomRow, PreparedRest).

% Prepare the last cell (Right edge)
prepare_last_cell([(Type, Up, _, Down, Left)|_], IsTopRow, IsBottomRow, PreparedLastCell) :-
    (IsTopRow -> TopConnection = false; TopConnection = Up),
    (IsBottomRow -> BottomConnection = false; BottomConnection = Down),
    PreparedLastCell = [(Type, TopConnection, false, BottomConnection, Left)].

% Set the 'Up' connection of each cell in the row to false
set_top_edge([], []).
set_top_edge([(Type, _, Right, Down, Left)|Rest], [(Type, false, Right, Down, Left)|PreparedRest]) :-
    set_top_edge(Rest, PreparedRest).

% Set the 'Down' connection of each cell in the row to false
set_bottom_edge([], []).
set_bottom_edge([(Type, Up, Right, _, Left)|Rest], [(Type, Up, Right, false, Left)|PreparedRest]) :-
    set_bottom_edge(Rest, PreparedRest).
