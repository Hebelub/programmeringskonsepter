% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/Optimize.pl

optimize_stars([]).
optimize_stars(Stars) :-
    unify_opposite_white_cells(Stars),
    process_stars_n_times(Stars, 40).
    % optimize_star_order(Stars).

% Unify opposite connections for white cells in a list of stars
unify_opposite_white_cells([]).
unify_opposite_white_cells([Star|Rest]) :-
    Star = star((white, Up, Right, Down, Left), _, _, _, _),
    Up = Down, % Unify the Up and Down connections
    Right = Left, % Unify the Right and Left connections
    unify_opposite_white_cells(Rest).
unify_opposite_white_cells([_|Rest]) :-
    % For non-white cells, just continue with the rest
    unify_opposite_white_cells(Rest).


% Entry point for processing stars a specified number of times.
process_stars_n_times(Stars, Times) :-
    process_stars_loop(Stars, Times).

% Recursive loop for processing stars.
process_stars_loop(_, 0).
process_stars_loop(Stars, Times) :-
    Times > 0,
    process_stars(Stars),
    NewTimes is Times - 1,
    process_stars_loop(Stars, NewTimes).

% Check each cell in the star to look after only one solution
process_stars([]).
process_stars([Star|Stars]) :-
    process_star(Star),
    process_stars(Stars).

% Process an individual star
process_star(Star) :-
    % First, optimize the center cell
    Star = star(Center, _, _, _, _),
    findall(Center, determine_star_center(Star, Center), Centers),
    optimize_center_cell(Centers, Center).

    % Then, apply pattern rules to the star
    % apply_pattern_rules(Star).

% Update the original star with the output star values
update_star_with_output(OriginalStar, OutputStar) :-
    OriginalStar = star(OrigCenter, OrigAdjUp, OrigAdjRight, OrigAdjDown, OrigAdjLeft),
    OutputStar = star(OutCenter, OutAdjUp, OutAdjRight, OutAdjDown, OutAdjLeft),

    % Unify the center cell
    OrigCenter = OutCenter,

    % Unify the adjacent cells
    OrigAdjUp = OutAdjUp,
    OrigAdjRight = OutAdjRight,
    OrigAdjDown = OutAdjDown,
    OrigAdjLeft = OutAdjLeft.


    % % Then, find all valid configurations for the star
    % findall(ValidStar, valid_star(Star), ValidStars),

    % % Optimize the whole star based on these valid configurations
    % % (You need to define how you want to optimize based on ValidStars)
    % % For example, if you want to optimize each adjacent cell:
    % divide_valid_stars(ValidStars, AdjUpCells, AdjRightCells, AdjDownCells, AdjLeftCells),
    % optimize_each_adjacent_cell(AdjUpCells, AdjRightCells, AdjDownCells, AdjLeftCells, OptimizedAdjUp, OptimizedAdjRight, OptimizedAdjDown, OptimizedAdjLeft).

    % % Update the original star with the optimized values
    % update_star(Star, OptimizedCenter, OptimizedAdjUp, OptimizedAdjRight, OptimizedAdjDown, OptimizedAdjLeft).

% Update the star with the optimized values
update_star(star(_, OriginalAdjUp, OriginalAdjRight, OriginalAdjDown, OriginalAdjLeft),
            OptimizedCenter, OptimizedAdjUp, OptimizedAdjRight, OptimizedAdjDown, OptimizedAdjLeft) :-
    % Update each component of the star
    update_if_optimized(OriginalAdjUp, OptimizedAdjUp),
    update_if_optimized(OriginalAdjRight, OptimizedAdjRight),
    update_if_optimized(OriginalAdjDown, OptimizedAdjDown),
    update_if_optimized(OriginalAdjLeft, OptimizedAdjLeft),
    update_if_optimized(Star, star(OptimizedCenter, OptimizedAdjUp, OptimizedAdjRight, OptimizedAdjDown, OptimizedAdjLeft)).

% Update the original cell if the optimized cell is different
update_if_optimized(OriginalCell, OptimizedCell) :-
    OriginalCell = OptimizedCell -> true; % Do nothing if they are the same
    OriginalCell = OptimizedCell.         % Update the original cell otherwise


optimize_each_adjacent_cell(AdjUpCells, AdjRightCells, AdjDownCells, AdjLeftCells, OptimizedAdjUp, OptimizedAdjRight, OptimizedAdjDown, OptimizedAdjLeft) :-
    optimize_center_cell(AdjUpCells, OptimizedAdjUp),
    % Debugging
    write('Optimized AdjUp: '), writeln(OptimizedAdjUp),
    write('AdjUpCells: '), writeln(AdjUpCells),
    optimize_center_cell(AdjRightCells, OptimizedAdjRight),
    optimize_center_cell(AdjDownCells, OptimizedAdjDown),
    optimize_center_cell(AdjLeftCells, OptimizedAdjLeft).


% Divide valid stars into lists of their respective adjacent cells
divide_valid_stars([], [], [], [], []).
divide_valid_stars([Star|Stars], [AdjUp|AdjUps], [AdjRight|AdjRights], [AdjDown|AdjDowns], [AdjLeft|AdjLefts]) :-
    extract_adjacent_cells(Star, AdjUp, AdjRight, AdjDown, AdjLeft),
    divide_valid_stars(Stars, AdjUps, AdjRights, AdjDowns, AdjLefts).

% Extract adjacent cells from a star
extract_adjacent_cells(star(_, AdjUp, AdjRight, AdjDown, AdjLeft), AdjUp, AdjRight, AdjDown, AdjLeft).


% Optimize the center cell based on consistent values across all possible configurations
optimize_center_cell(Centers, OptimizedCenter) :-
    maplist(extract_connections, Centers, Connections),
    transpose(Connections, Transposed),
    maplist(consistent_value, Transposed, ConsistentConnections),
    update_center_cell(ConsistentConnections, OptimizedCenter).

% Extract connections from a center cell
extract_connections((_, Up, Right, Down, Left), [Up, Right, Down, Left]).

% Determine if there is a consistent value (true/false) across all configurations
consistent_value(Connections, Value) :-
    list_to_set(Connections, ValuesSet),
    (ValuesSet = [Value] -> true; Value = _). % If there's only one value in the set, use it; otherwise, leave it unbound

% Update the center cell with consistent connection values
update_center_cell([Up, Right, Down, Left], (_, Up, Right, Down, Left)).





optimize_star_order(Stars) :-
    true.

    % Sort the stars into separate lists based on the center cell's type
    % filter_stars(Stars, is_black_star, BlackStars),
    % filter_stars(Stars, is_white_star, WhiteStars),
    % filter_stars(Stars, is_empty_star, EmptyStars),

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
    
is_black_star(star((black, _, _, _, _), _, _, _, _)).
is_white_star(star((white, _, _, _, _), _, _, _, _)).
is_empty_star(star((empty, _, _, _, _), _, _, _, _)).

% Filters the list of Stars based on the given Pattern.
filter_stars(Stars, Pattern, FilteredStars) :-
    include(Pattern, Stars, FilteredStars).
