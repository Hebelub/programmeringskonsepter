% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleSolver.pl

:- initialization(main).
:- include('PuzzleTypes.pl').
:- include('PuzzleReader.pl').
:- include('Utility.pl').
:- include('PrintPuzzle.pl').

main :-
    % Use the read_file predicate from PuzzleReader to read puzzles from the file.
    read_file('puzzles.txt', Puzzles),
    
    % Solve each puzzle and collect the solutions.
    findall(SolvedPuzzle, (member(Puzzle, Puzzles), solve_puzzle(Puzzle, SolvedPuzzle)), SolvedPuzzles),

    % Write the solved puzzles to a file.
    write_solutions_to_file('solved_puzzles.txt', SolvedPuzzles),

    % Optionally, print a confirmation.
    writeln('All puzzles solved and written to solved_puzzles.txt.').
    
    % Properly terminate the program.
    % halt.

solve_puzzle(Puzzle, SolvedPuzzle) :-
    % Debug: Print out the puzzle structure before attempting to solve.
    writeln('Puzzle structure before solving:'),
    writeln(Puzzle),

    % Print out the puzzle to solve
    writeln('Puzzle to solve:'),
    print_puzzle(Puzzle),

    % Assign the unsolved puzzle to the SolvedPuzzle variable (for now).
    SolvedPuzzle = Puzzle.
