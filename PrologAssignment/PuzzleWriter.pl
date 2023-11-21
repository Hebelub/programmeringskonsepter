% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleWriter.pl

% Write solutions to file
write_solutions_to_file(FilePath, Solutions) :-
    open(FilePath, write, Stream),
    write_solutions(Stream, Solutions),
    close(Stream).

write_solutions(_, []).
write_solutions(Stream, [Solution|Solutions]) :-
    % Write the solution followed by a newline. Adjust format as needed.
    writeln(Stream, Solution),
    write_solutions(Stream, Solutions).