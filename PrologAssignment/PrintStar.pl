% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/PrintStar.pl

:- include('PrintPuzzle.pl').

% Convert a star to a 2D grid
convert_star_to_grid(Star, Grid) :-
    Star = star(Center, AdjUp, AdjRight, AdjDown, AdjLeft),
    Grid = [
        [((empty, _, _, _, _)), (AdjUp), ((empty, _, _, _, _))],
        [(AdjLeft), (Center), (AdjRight)],
        [((empty, _, _, _, _)), (AdjDown), ((empty, _, _, _, _))]
    ].

% Print the star as a 2D grid
print_star(Star) :-
    convert_star_to_grid(Star, Grid),
    print_puzzle(Grid).

% Example usage
% ?- print_star_as_grid(star((empty,true,false,false,true),(empty,true,false,false,true),(empty,true,false,false,true),(empty,true,false,false,true),(black,true,false,false,true))).
