% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleWriter.pl

% Write solutions to file
write_solutions_to_file(FilePath, Solutions) :-
    open(FilePath, write, Stream),
    length(Solutions, NumPuzzles),
    format(Stream, 'puzzles ~w\n', [NumPuzzles]),
    write_solutions(Stream, Solutions),
    close(Stream).

write_solutions(_, []).
write_solutions(Stream, [Solution|Solutions]) :-
    length(Solution, Rows),          % Assuming Solution is a list of rows
    length(Solution, Cols),          % Assuming each row has equal length
    format(Stream, 'size ~wx~w\n', [Rows, Cols]),
    maplist(write_row(Stream), Solution),
    writeln(Stream, ''),             % Newline after each puzzle
    write_solutions(Stream, Solutions).

write_row(Stream, Row) :-
    maplist(cell_to_char, Row, Chars),
    atomics_to_string(Chars, '', RowString),
    format(Stream, '~s\n', [RowString]).


% Mapping cells to their characters
cell_to_char((empty, false, false, false, false), ' ').
cell_to_char((empty, true, false, true, false), '│').
cell_to_char((empty, false, true, false, true), '─').
cell_to_char((empty, true, true, false, false), '└').
cell_to_char((empty, false, true, true, false), '┌').
cell_to_char((empty, false, false, true, true), '┐').
cell_to_char((empty, true, false, false, true), '┘').
cell_to_char((white, true, false, true, false), '╡').
cell_to_char((white, false, true, false, true), '╨').
cell_to_char((black, _, _, _, _), '┼').  % Black cells always map to '┼' regardless of connections
