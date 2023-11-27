% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/ExtractFromStarPuzzle.pl

% Extract the center elements from each star in a 2D array

% Main predicate to process the entire 2D array
extract_center_elements(StarPuzzle, CenterPuzzle) :-
    maplist(extract_center_row, StarPuzzle, CenterPuzzle).

% Extract center elements from each star in a row
extract_center_row(StarRow, CenterRow) :-
    maplist(extract_center_from_star, StarRow, CenterRow).

% Extract the center element from a single star
extract_center_from_star(star(Center, _, _, _, _), Center).
