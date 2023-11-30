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
valid_star(star((black, true, false, false, true), (_, true, false, true, false), _, _, (_, false, true, false, true))).

% Define a valid star cell with empty center
valid_star(star((empty, true, true, false, false), _, _, _, _)).
valid_star(star((empty, false, true, true, false), _, _, _, _)).
valid_star(star((empty, false, false, true, true), _, _, _, _)).
valid_star(star((empty, true, false, false, true), _, _, _, _)).
valid_star(star((empty, true, false, true, false), _, _, _, _)).
valid_star(star((empty, false, true, false, true), _, _, _, _)).
valid_star(star((empty, false, false, false, false), _, _, _, _)).


valid_star_smart(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
    valid_star(Center),

    % Adjacent stars
    AdjUpStar = star(AdjUp, _, _, Center, _),
    AdjRightStar = star(AdjRight, _, _, _, Center),
    AdjDownStar = star(AdjDown, Center, _, _, _),
    AdjLeftStar = star(AdjLeft, _, Center, _, _),

    % Check validity of adjacent stars
    valid_star(AdjUpStar),
    valid_star(AdjRightStar),
    valid_star(AdjDownStar),
    valid_star(AdjLeftStar).


% Determine the center cell's connections based on its type and adjacent cells
determine_star_center(Star, CenterCell) :-
    % Extract the type of the center cell and adjacent cells from the star
    Star = star((Type, UpKnown, RightKnown, DownKnown, LeftKnown), AdjUp, AdjRight, AdjDown, AdjLeft),

    % Handle already known connections or try possibilities if unknown
    (nonvar(UpKnown) -> Up = UpKnown; member(Up, [true, false])),
    (nonvar(RightKnown) -> Right = RightKnown; member(Right, [true, false])),
    (nonvar(DownKnown) -> Down = DownKnown; member(Down, [true, false])),
    (nonvar(LeftKnown) -> Left = LeftKnown; member(Left, [true, false])),

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
