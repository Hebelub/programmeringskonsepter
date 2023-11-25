% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleSolver.pl

:- initialization(main).
:- include('PuzzleTypes.pl').
:- include('PuzzleReader.pl').
:- include('PuzzleWriter.pl').
:- include('PrintPuzzle.pl').
:- include('PreparePuzzle.pl').
:- include('PuzzleRules.pl').
:- include('AdjacentCells.pl').

main :-
    % Read puzzles from the file
    read_file('puzzles.txt', Puzzles),

    % Prepare the puzzles for solving
    prepare_puzzles(Puzzles, PreparedPuzzles),

    % Solve each puzzle and collect the first solution for each
    solve_each_puzzle(PreparedPuzzles, SolvedPuzzles),

    % Write the solved puzzles to a file
    write_solutions_to_file('solved_puzzles.txt', SolvedPuzzles),

    % Print a confirmation
    writeln('All puzzles solved and written to solved_puzzles.txt.').

solve_each_puzzle([], []).
solve_each_puzzle([Puzzle|Puzzles], [SolvedPuzzle|SolvedPuzzles]) :-
    solve_puzzle(Puzzle, SolvedPuzzle),
    solve_each_puzzle(Puzzles, SolvedPuzzles).

solve_puzzle(Puzzle, SolvedPuzzle) :-
    % Debug: Print out the puzzle structure before attempting to solve.
    writeln('Puzzle structure before solving:'),
    writeln(Puzzle),
    print_puzzle(Puzzle),

    % Add neighbours to each cell
    add_neighbors(Puzzle, PuzzleWithNeighbors),

    % Print out the puzzle after adding neighbours
    writeln('Puzzle after adding neighbours:'),
    writeln(PuzzleWithNeighbors),

    % Call the solving predicate from PuzzleRules.pl
    % apply_rules(Puzzle, RulesAppliedPuzzle),
    RulesAppliedPuzzle = Puzzle,

    % Print out the puzzle after solving
    writeln('Puzzle after solving:'),
    writeln(RulesAppliedPuzzle),
    print_puzzle(RulesAppliedPuzzle),

    % Assign the solution to the SolvedPuzzle variable
    SolvedPuzzle = RulesAppliedPuzzle.
