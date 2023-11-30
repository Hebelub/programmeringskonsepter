% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleSolver.pl

:- initialization(main).
:- include('PuzzleTypes.pl').
:- include('PuzzleReader.pl').
:- include('PuzzleWriter.pl').
:- include('PrintPuzzle.pl').
:- include('PreparePuzzle.pl').
:- include('PuzzleRules.pl').
:- include('AdjacentCells.pl').
:- include('IsPuzzleLegal.pl').
:- include('ExtractFromStarPuzzle.pl').
:- include('Optimize').

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
    % Print puzzle structure before solve
    writeln('Puzzle structure before solving:'),
    print_puzzle(Puzzle),
    
    % Add neighbours to each cell
    add_neighbors(Puzzle, PuzzleWithNeighbors),

    % Flatten the puzzle
    flatten_2d(PuzzleWithNeighbors, Stars),

    % Optimize the puzzle in the flattened list
    optimize_stars(Stars),

    % After optimization
    writeln('Puzzle structure after optimization:'),
    print_puzzle(Puzzle),

    % Solve the puzzle
    is_puzzle_valid(Stars),
    writeln('Solved Puzzle:'),
    print_puzzle(Puzzle),

    % Assign the solution to the SolvedPuzzle variable
    SolvedPuzzle = Puzzle.

% Flatten a 2D list into a 1D list while maintaining the structure of elements
flatten_2d([], []).
flatten_2d([Row|Rows], FlatList) :-
    flatten_2d(Rows, FlatRest),
    append(Row, FlatRest, FlatList).
