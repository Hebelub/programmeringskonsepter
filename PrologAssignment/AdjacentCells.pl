% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/AdjacentCells.pl

% ADD NEIGHBORING CELLS

% Add neighboring cells to each cell in the puzzle
add_neighbors(Puzzle, PuzzleWithNeighbors) :-
    maplist(add_neighbors_row(Puzzle), Puzzle, PuzzleWithNeighbors).

% Add neighbors for each cell in a row
add_neighbors_row(Puzzle, Row, RowWithNeighbors) :-
    maplist(add_neighbors_cell(Puzzle, Row), Row, RowWithNeighbors).

% Add neighbors for a specific cell
add_neighbors_cell(Puzzle, Row, Center, (Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    nth0(RowIndex, Puzzle, Row),  % Get row index
    nth0(ColIndex, Row, Center),  % Get column index

    find_upper_neighbor(Puzzle, RowIndex, ColIndex, AdjUp),
    find_right_neighbor(Row, ColIndex, AdjRight),
    find_lower_neighbor(Puzzle, RowIndex, ColIndex, AdjDown),
    find_left_neighbor(Row, ColIndex, AdjLeft),

    % DEBUG:
    write('Center Cell: '), write(Center), nl,
    write('Row Index: '), write(RowIndex), nl,
    write('Column Index: '), write(ColIndex), nl,
    write('Upper Neighbor: '), write(AdjUp), nl,
    write('Right Neighbor: '), write(AdjRight), nl,
    write('Lower Neighbor: '), write(AdjDown), nl,
    write('Left Neighbor: '), write(AdjLeft), nl,
    nl.


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

