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
    ( Up -> write(' | '); write('   ') ).

% Print the middle part of the cell (with cell type)
print_cell_middle((Type, _, Right, _, Left)) :-
    ( Left -> write('-'); write(' ') ),
    print_type(Type),
    ( Right -> write('-'); write(' ') ).

% Print the bottom part of the cell
print_cell_bottom((_, _, _, Down, _)) :-
    ( Down -> write(' | '), write('   '); write('   ') ).

% Print the type of cell
print_type(white) :- write('o').
print_type(black) :- write('*').
print_type(empty) :- write('.').

% Example usage
% ?- print_puzzle([[(white,false,false,false,false),(black,false,false,false,false),(empty,false,false,false,false),(white,false,false,false,false)],[(black,false,false,false,false),(white,false,false,false,false),(white,false,false,false,false),(empty,false,false,false,false)]]).
