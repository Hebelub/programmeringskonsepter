% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PreparePuzzle.pl

% Predicate to print the Puzzle
print_puzzle(Puzzle) :-
    maplist(print_row, Puzzle).

% Predicate to print each row of the Puzzle
print_row(Row) :-
    maplist(print_cell_top, Row), nl,
    maplist(print_cell_middle, Row), nl,
    maplist(print_cell_bottom, Row), nl.

% Print the top part of the cell
print_cell_top((_, Up, _, _, _)) :-
    write(' '), % Add initial leading space
    print_connection(Up, '|', ' ').

% Print the middle part of the cell (with cell type)
print_cell_middle((Type, _, Right, _, Left)) :-
    print_connection(Left, '-', ''),
    print_type(Type),
    print_connection(Right, '-', '').

% Print the bottom part of the cell
print_cell_bottom((_, _, _, Down, _)) :-
    write(' '), % Add initial leading space
    print_connection(Down, '|', ' ').

% Print the type of cell
print_type(white) :- write('o').
print_type(black) :- write('*').
print_type(empty) :- write('.').

% Print connection
% Print connection with consistent spacing
print_connection(Connection, Symbol, Space) :- 
    var(Connection), 
    write('?'), write(Space).
print_connection(Connection, Symbol, Space) :- 
    Connection, 
    write(Symbol), write(Space).
print_connection(Connection, _, Space) :- 
    \+ Connection, 
    write('x'), write(Space).


% Example usage
% ?- print_puzzle([[(white,false,_9004,_9010,false),(black,false,_9034,_9040,_9042),(empty,false,false,_9070,_9072)],[(empty,_10624,_10630,_10636,false),(white,_10654,_10660,_10666,_10668),(black,_10684,false,_10696,_10698)],[(black,_10802,_10808,false,false),(empty,_10832,_10838,false,_10846),(white,_10862,false,false,_10876)]]).