% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/AdjacentCells.pl

% ADD NEIGHBORING CELLS

% Add neighboring cells to each cell in the puzzle
add_neighbors(Puzzle, PuzzleWithNeighbors) :-
    add_neighbors_rows(Puzzle, Puzzle, 0, PuzzleWithNeighbors).

% Add neighbors for each row in the puzzle
add_neighbors_rows([], _, _, []).
add_neighbors_rows([Row|Rows], Puzzle, RowIndex, [RowWithNeighbors|PuzzleWithNeighbors]) :-
    add_neighbors_row(Row, 0, Puzzle, RowIndex, RowWithNeighbors),
    NextRowIndex is RowIndex + 1,
    add_neighbors_rows(Rows, Puzzle, NextRowIndex, PuzzleWithNeighbors).

% Add neighbors for each cell in a row
add_neighbors_row([], _, _, _, []).
add_neighbors_row([Center|Centers], ColIndex, Puzzle, RowIndex, [CellWithNeighbors|RowWithNeighbors]) :-
    add_neighbors_cell(ColIndex, Center, Puzzle, RowIndex, CellWithNeighbors),
    NextColIndex is ColIndex + 1,
    add_neighbors_row(Centers, NextColIndex, Puzzle, RowIndex, RowWithNeighbors).

% Add neighbors for a specific cell
add_neighbors_cell(ColIndex, Center, Puzzle, RowIndex, star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    nth0(RowIndex, Puzzle, Row), % Use the passed RowIndex
    find_upper_neighbor(Puzzle, RowIndex, ColIndex, AdjUp),
    find_right_neighbor(Row, ColIndex, AdjRight),
    find_lower_neighbor(Puzzle, RowIndex, ColIndex, AdjDown),
    find_left_neighbor(Row, ColIndex, AdjLeft).

    % % Debug: Print the current cell's position and its neighbors
    % write('Row: '), write(RowIndex), write(', Col: '), writeln(ColIndex),
    % write('Center: '), writeln(Center),
    % write('AdjUp: '), writeln(AdjUp),
    % write('AdjRight: '), writeln(AdjRight),
    % write('AdjDown: '), writeln(AdjDown),
    % write('AdjLeft: '), writeln(AdjLeft), nl.


% FIND NEIGHBORING CELLS

% Define an empty cell constant
empty_cell((empty, false, false, false, false)).

% Find the upper neighbor of a cell
find_upper_neighbor(Puzzle, RowIndex, ColIndex, AdjUp) :-
    (RowIndex > 0 ->
        UpperRowIndex is RowIndex - 1,
        nth0(UpperRowIndex, Puzzle, UpperRow),
        nth0(ColIndex, UpperRow, AdjUp)
    ; 
        empty_cell(AdjUp)
    ).

% Find the right neighbor of a cell
find_right_neighbor(Row, ColIndex, AdjRight) :-
    length(Row, RowLength),
    (ColIndex < RowLength - 1 ->
        RightIndex is ColIndex + 1,
        nth0(RightIndex, Row, AdjRight)
    ;
        empty_cell(AdjRight)
    ).

% Find the lower neighbor of a cell
find_lower_neighbor(Puzzle, RowIndex, ColIndex, AdjDown) :-
    length(Puzzle, PuzzleLength),
    (RowIndex < PuzzleLength - 1 ->
        LowerRowIndex is RowIndex + 1,
        nth0(LowerRowIndex, Puzzle, LowerRow),
        nth0(ColIndex, LowerRow, AdjDown)
    ;
        empty_cell(AdjDown)
    ).

% Find the left neighbor of a cell
find_left_neighbor(Row, ColIndex, AdjLeft) :-
    (ColIndex > 0 ->
        LeftIndex is ColIndex - 1,
        nth0(LeftIndex, Row, AdjLeft)
    ;
        empty_cell(AdjLeft)
    ).
