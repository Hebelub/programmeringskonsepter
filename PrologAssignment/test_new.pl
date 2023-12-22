% Define the structure of a cell: cell(Row, Col, Connections)
% Connections is a list containing directions (up, right, down, left)

% Predicate to generate a grid of NxM cells
generate_grid(N, M, Grid) :-
    empty_grid(N, M, EmptyGrid),
    fill_grid(EmptyGrid, Grid).

% Create an empty grid
empty_grid(N, M, Grid) :-
    findall(cell(Row, Col, _), (between(1, N, Row), between(1, M, Col)), Grid).

% Fill the grid with valid connections
fill_grid([], []).
fill_grid([cell(Row, Col, _)|Rest], [cell(Row, Col, Connections)|Grid]) :-
    valid_connections(Connections),
    fill_grid(Rest, Grid),
    ensure_reciprocal_connections([cell(Row, Col, Connections)|Grid]).

% Define valid connections for a cell - at least two connections
valid_connections(Connections) :-
    subset([up, right, down, left], Connections),
    length(Connections, Length),
    Length >= 2.

% Ensure reciprocal connections throughout the grid
ensure_reciprocal_connections([]).
ensure_reciprocal_connections([cell(Row, Col, Connections)|Rest]) :-
    forall(member(Direction, Connections), 
           (adjacent_cell(Row, Col, Direction, AdjRow, AdjCol, Rest),
            opposite_direction(Direction, Opposite),
            member(cell(AdjRow, AdjCol, AdjConnections), Rest),
            member(Opposite, AdjConnections))),
    ensure_reciprocal_connections(Rest).

% Define rules for adjacent cells based on direction
adjacent_cell(Row, Col, up, Row-1, Col, Grid) :-
    member(cell(Row-1, Col, _), Grid).
adjacent_cell(Row, Col, right, Row, Col+1, Grid) :-
    member(cell(Row, Col+1, _), Grid).
adjacent_cell(Row, Col, down, Row+1, Col, Grid) :-
    member(cell(Row+1, Col, _), Grid).
adjacent_cell(Row, Col, left, Row, Col-1, Grid) :-
    member(cell(Row, Col-1, _), Grid).

% Define opposite directions
opposite_direction(up, down).
opposite_direction(right, left).
opposite_direction(down, up).
opposite_direction(left, right).

% Example query to generate a 3x3 grid
% ?- generate_grid(3, 3, Grid).
