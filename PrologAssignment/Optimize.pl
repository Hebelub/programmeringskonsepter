% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/Optimize.pl

optimize_stars([]).
optimize_stars(Stars) :-
    process_stars(Stars),
    process_stars(Stars),
    process_stars(Stars),
    process_stars(Stars),
    process_stars(Stars),
    process_stars(Stars),
    process_stars(Stars).
    % Reverse Stars

    % After this we should order the stars for optimization
    % TODO: More optimization

% Check each cell in the star to look after only one solution
process_stars([]).
process_stars([Star|Stars]) :-
    process_star(Star),
    process_stars(Stars).

% Process an individual star
process_star(Star) :-
    Star = star(Center, _, _, _, _),
    findall(Center, determine_star_center(Star, Center), Centers),
    optimize_center_cell(Centers, Center).

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
