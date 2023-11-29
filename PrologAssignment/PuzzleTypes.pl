% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleTypes.pl

:- include('PrintStar.pl').

% Checking Cells

% Mapping the symbols to cell types
cell_type('*', black).
cell_type('o', white).
cell_type('_', empty).

% Cell type definitions
valid_cell((white, Up, Right, Down, Left)) :- is_straight(Up, Right, Down, Left).
valid_cell((black, Up, Right, Down, Left)) :- is_turn(Up, Right, Down, Left).
valid_cell((empty, Up, Right, Down, Left)) :- valid_empty(Up, Right, Down, Left).

% Valid white cell must be straight.
is_straight(true, false, true, false).
is_straight(false, true, false, true).

% Valid black cell must be a turn.
is_turn(true, true, false, false).
is_turn(false, true, true, false).
is_turn(false, false, true, true).
is_turn(true, false, false, true).

% Valid empty cell can either have two connections, no connections, or valid straight/turn configurations
valid_empty(false, false, false, false). % No connections
valid_empty(Up, Right, Down, Left) :- is_straight(Up, Right, Down, Left). % Straight configuration
valid_empty(Up, Right, Down, Left) :- is_turn(Up, Right, Down, Left). % Turn configuration


% Checking Stars

% Define a valid star cell

% Define a valid star cell with white center
valid_star(star((white, false, true, false, true), _, _, _, (_, _, true, _, false))).
valid_star(star((white, false, true, false, true), _, (_, _, false, _, true), _, (_, false, true, false, true))).
valid_star(star((white, true, false, true, false), _, _, (_, true, _, false, _), _)).
valid_star(star((white, true, false, true, false), (_, false, _, true, _), _, (_, true, false, true, false), _)).

% Define a valid star cell with black center
valid_star(star((black, true, true, false, false), (_, true, false, true, false), (_, false, true, false, true), _, _)).
valid_star(star((black, false, true, true, false), _, (_, false, true, false, true), (_, true, false, true, false), _)).
valid_star(star((black, false, false, true, true), _, _, (_, true, false, true, false), (_, false, true, false, true))).
valid_star(star((black, true, false, false, true), (_ true, false, true, false), _, _, (_, false, true, false, true))).

% Define a valid star cell with empty center
valid_star(star((empty, _, _, _, _), _, _, _, _)).



% Determine the center cell's connections based on its type and adjacent cells
determine_center_connections(Star, CenterCell) :-
    % writeln('Determening for Star: '), print_star(Star), nl.

    % Extract the type of the center cell and adjacent cells from the star
    Star = star((Type, _, _, _, _), AdjUp, AdjRight, AdjDown, AdjLeft),

    % Try all possible combinations of connections for the center cell
    member(Up, [true, false]),
    member(Right, [true, false]),
    member(Down, [true, false]),
    member(Left, [true, false]),

    % Check if the star configuration is valid with the given connections
    valid_star(star((Type, Up, Right, Down, Left), AdjUp, AdjRight, AdjDown, AdjLeft)),

    % Return the center cell with determined connections
    CenterCell = (Type, Up, Right, Down, Left).



% TESTING TO GENERATE STARS

% Generate and print all valid star combinations
generate_and_print_all_valid_stars :-
    findall(Star, generate_valid_star(Star), Stars),
    maplist(print_star, Stars).

% Generate a valid star configuration
generate_valid_star(Star) :-
    Star = star(Center, AdjUp, AdjRight, AdjDown, AdjLeft),
    % Ensure the center and adjacent cells have matching connections
    Center = (_, Up, Right, Down, Left),
    AdjUp = (_, _, _, Up, _),
    AdjRight = (_, _, _, _, Right),
    AdjDown = (_, Down, _, _, _),
    AdjLeft = (_, _, Left, _, _),
    % Ensure each cell is valid
    valid_cell(Center),
    valid_cell(AdjUp),
    valid_cell(AdjRight),
    valid_cell(AdjDown),
    valid_cell(AdjLeft),
    % Check if the star configuration is valid
    valid_star(Star).
