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
    % writeln(Puzzle),
    print_puzzle(Puzzle),

    % Add neighbours to each cell
    add_neighbors(Puzzle, PuzzleWithNeighbors),

    % Flatten the puzzle
    flatten_2d(PuzzleWithNeighbors, FlattenedPuzzleStars),
    % writeln('Flattened puzzlestars:'),
    % writeln(FlattenedPuzzleStars),

    % Sort the stars into separate lists based on the center cell's type
    % filter_stars(FlattenedPuzzleStars, is_black_star, BlackStars),
    % filter_stars(FlattenedPuzzleStars, is_white_star, WhiteStars),
    % filter_stars(FlattenedPuzzleStars, is_empty_star, EmptyStars),

    % Print out the filtered stars
    % writeln('Num Black stars:'),
    % length(BlackStars, NumBlackStars),
    % writeln(NumBlackStars),
    % writeln('White stars:'),
    % length(WhiteStars, NumWhiteStars),
    % writeln(NumWhiteStars),
    % writeln('Empty stars:'),
    % length(EmptyStars, NumEmptyStars),
    % writeln(NumEmptyStars),

    % Check if the puzzle is valid
    % is_puzzle_valid(BlackStars),
    % writeln('Puzzle with black stars:'),
    % print_puzzle(Puzzle),

    % is_puzzle_valid(WhiteStars),
    % writeln('Puzzle with white stars:'),
    % print_puzzle(Puzzle),

    is_puzzle_valid(FlattenedPuzzleStars),
    writeln('Solved Puzzle:'),
    print_puzzle(Puzzle),

    % Assign the solution to the SolvedPuzzle variable
    SolvedPuzzle = Puzzle.

% Flatten a 2D list into a 1D list while maintaining the structure of elements
flatten_2d([], []).
flatten_2d([Row|Rows], FlatList) :-
    flatten_2d(Rows, FlatRest),
    append(Row, FlatRest, FlatList).

is_black_star(star((black, _, _, _, _), _, _, _, _)).
is_white_star(star((white, _, _, _, _), _, _, _, _)).
is_empty_star(star((empty, _, _, _, _), _, _, _, _)).

% Filters the list of Stars based on the given Pattern.
filter_stars(Stars, Pattern, FilteredStars) :-
    include(Pattern, Stars, FilteredStars).
