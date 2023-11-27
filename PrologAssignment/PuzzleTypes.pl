% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleTypes.pl


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

