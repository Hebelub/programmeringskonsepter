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

% % Define a valid star cell
% valid_star(star(Center, AdjUp, AdjRight, AdjDown, AdjLeft)) :-
%     valid_center_cell(Center, AdjUp, AdjRight, AdjDown, AdjLeft).

% % Define what constitutes a valid center cell for white, black, and empty cells
% valid_center_cell((white, _, _, _, _), AdjUp, AdjRight, AdjDown, AdjLeft) :-
%     valid_white_center(AdjUp, AdjRight, AdjDown, AdjLeft).
% % Placeholder for black and empty center cell validation
% % valid_center_cell((black, _, _, _, _), AdjUp, AdjRight, AdjDown, AdjLeft) :- ...
% % valid_center_cell((empty, _, _, _, _), AdjUp, AdjRight, AdjDown, AdjLeft) :- ...

% % Define rules for a white center cell
% valid_white_center(AdjUp, AdjRight, AdjDown, AdjLeft) :-
%     (is_turn(AdjLeft) ; is_straight(AdjLeft), is_turn(AdjRight)),
%     (is_turn(AdjUp) ; is_straight(AdjUp), is_turn(AdjDown)).
