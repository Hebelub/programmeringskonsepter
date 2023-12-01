% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleReader.pl

% Mapping the symbols to cell types
cell_type('*', black).
cell_type('o', white).
cell_type('_', empty).

% Cell structure
create_cell(CellType, Cell) :-
    Cell = (CellType, _, _, _, _).

read_file(FileName, Puzzles) :-
    open(FileName, read, Stream),
    read_line(Stream, [FirstLine]),
    atom_string(PuzzlesAtom, FirstLine),
    atomic_list_concat(['puzzles', NumPuzzles], ' ', PuzzlesAtom),
    atom_number(NumPuzzles, NPuzzles),
    read_puzzles(Stream, NPuzzles, Puzzles),
    close(Stream).

read_puzzles(_, 0, []).
read_puzzles(Stream, N, [Grid|Rest]) :- % Modified to return Grid directly
    N > 0,
    read_line(Stream, [SizeLine]),
    atom_string(SizeAtom, SizeLine),
    atomic_list_concat(['size', Dimensions], ' ', SizeAtom),
    atomic_list_concat([Cols, Rows], 'x', Dimensions),
    atom_number(Rows, NRows),
    atom_number(Cols, NCols),
    read_grid(Stream, NRows, NCols, [], Grid), % Grid is used directly
    N1 is N - 1,
    read_puzzles(Stream, N1, Rest).

% Read the grid of the puzzle
read_grid(_, 0, _, Grid, Grid).
read_grid(Stream, N, CurrCols, CurrGrid, Grid) :-
    N > 0,
    read_line(Stream, [Line]),
    atom_string(LineAtom, Line),
    % Trim trailing whitespace
    trim(LineAtom, TrimmedLineAtom),
    % Debugging
    write(TrimmedLineAtom), nl,
    atomic_list_concat(Symbols, ' ', TrimmedLineAtom),
    % Debugging
    write(Symbols), nl,
    maplist(cell_type, Symbols, CellTypes),
    maplist(create_cell, CellTypes, Row),
    append(CurrGrid, [Row], NewGrid),
    N1 is N - 1,
    read_grid(Stream, N1, CurrCols, NewGrid, Grid).

read_line(Stream, Lines) :-
    read_line_to_string(Stream, Line),
    Lines = [Line].

% Custom predicate to trim trailing whitespace
trim(String, Trimmed) :-
    string_codes(String, Codes),
    reverse(Codes, Reversed),
    drop_space(Reversed, TrimmedReversed),
    reverse(TrimmedReversed, TrimmedCodes),
    string_codes(Trimmed, TrimmedCodes).

drop_space([], []).
drop_space([32|T], Trimmed) :- drop_space(T, Trimmed), !.  % ASCII code for space is 32
drop_space(L, L).