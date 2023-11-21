% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PuzzleTypes.pl

:- include('Utility.pl').

% Mapping the symbols to cell types
cell_type('*', black).
cell_type('o', white).
cell_type('_', empty).

% Cell type definitions
validCell((white, Up, Right, Down, Left)) :- isStraight(Up, Right, Down, Left).
validCell((black, Up, Right, Down, Left)) :- isTurn(Up, Right, Down, Left).
validCell((empty, Up, Right, Down, Left)) :- validEmpty(Up, Right, Down, Left).

% Valid white cell must be straight.
isStraight(true, false, true, false).
isStraight(false, true, false, true).

% Valid black cell must be a turn.
isTurn(true, true, false, false).
isTurn(false, true, true, false).
isTurn(false, false, true, true).
isTurn(true, false, false, true).

% Valid empty cell can either have two connections, no connections, or valid straight/turn configurations
validEmpty(false, false, false, false). % No connections
validEmpty(Up, Right, Down, Left) :- isStraight(Up, Right, Down, Left). % Straight configuration
validEmpty(Up, Right, Down, Left) :- isTurn(Up, Right, Down, Left). % Turn configuration
