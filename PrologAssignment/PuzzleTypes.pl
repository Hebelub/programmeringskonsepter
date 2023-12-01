% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleTypes.pl

:- include('PrintStar.pl').

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
valid_star(star((empty, true, true, false, false), (white, _, _, _, _), (white, _, _, _, _), _, _)).
valid_star(star((empty, true, true, false, false), (empty, _, _, _, _), (empty, _, _, _, _), _, _)).
valid_star(star((empty, true, true, false, false), (white, _, _, _, _), (empty, _, _, _, _), _, _)).
valid_star(star((empty, true, true, false, false), (empty, _, _, _, _), (white, _, _, _, _), _, _)).

valid_star(star((empty, false, true, true, false), _, (white, _, _, _, _), (white, _, _, _, _), _)).
valid_star(star((empty, false, true, true, false), _, (empty, _, _, _, _), (empty, _, _, _, _), _)).
valid_star(star((empty, false, true, true, false), _, (white, _, _, _, _), (empty, _, _, _, _), _)).
valid_star(star((empty, false, true, true, false), _, (empty, _, _, _, _), (white, _, _, _, _), _)).

valid_star(star((empty, false, false, true, true), _, _, (white, _, _, _, _), (white, _, _, _, _))).
valid_star(star((empty, false, false, true, true), _, _, (empty, _, _, _, _), (empty, _, _, _, _))).
valid_star(star((empty, false, false, true, true), _, _, (white, _, _, _, _), (empty, _, _, _, _))).
valid_star(star((empty, false, false, true, true), _, _, (empty, _, _, _, _), (white, _, _, _, _))).

valid_star(star((empty, true, false, false, true), (white, _, _, _, _), _, _, (white, _, _, _, _))).
valid_star(star((empty, true, false, false, true), (empty, _, _, _, _), _, _, (empty, _, _, _, _))).
valid_star(star((empty, true, false, false, true), (empty, _, _, _, _), _, _, (white, _, _, _, _))).
valid_star(star((empty, true, false, false, true), (white, _, _, _, _), _, _, (empty, _, _, _, _))).

valid_star(star((empty, true, false, true, false), _, _, _, _)).
valid_star(star((empty, false, true, false, true), _, _, _, _)).
valid_star(star((empty, false, false, false, false), _, _, _, _)).


% valid_star_smart(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
%     once((
%         once(valid_adjacent(up, Center, AdjUp)),
%         once(valid_adjacent(right, Center, AdjRight)),
%         once(valid_adjacent(down, Center, AdjDown)),
%         once(valid_adjacent(left, Center, AdjLeft))
%     )).

% Check if there exists at least one valid configuration for an adjacent cell in a given direction.
valid_adjacent(Direction, Center, Adjacent) :-
    % The type of the adjacent cell is known and fixed
    Adjacent = (Type, UpKnown, RightKnown, DownKnown, LeftKnown),

    % Handle already known connections or try possibilities if unknown
    (nonvar(UpKnown) -> Up = UpKnown; member(Up, [true, false])),
    (nonvar(RightKnown) -> Right = RightKnown; member(Right, [true, false])),
    (nonvar(DownKnown) -> Down = DownKnown; member(Down, [true, false])),
    (nonvar(LeftKnown) -> Left = LeftKnown; member(Left, [true, false])),

    % Construct a phantom star for the adjacent cell based on the direction
    construct_phantom_star(Direction, (Type, Up, Right, Down, Left), Center, PhantomStar),

    % Check if the phantom star configuration is valid
    valid_star(PhantomStar).

% Construct a phantom star based on the direction of the adjacent cell
construct_phantom_star(up, AdjCell, Center, star(AdjCell, _, _, Center, _)).
construct_phantom_star(right, AdjCell, Center, star(AdjCell, _, _, _, Center)).
construct_phantom_star(down, AdjCell, Center, star(AdjCell, Center, _, _, _)).
construct_phantom_star(left, AdjCell, Center, star(AdjCell, _, Center, _, _)).


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
