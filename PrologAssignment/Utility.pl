% FILEPATH: /C:/Users/glosn/uia/submission/gabriell/PrologAssignment/Utility.pl

% A cell is straight if two opposite sides are connected and the other two are not.
isCellStraight(cell(_, Up, Right, Down, Left)) :-
    Up == Down, Right == Left, Up \= Right.

% A cell turns if there are two adjacent sides connected.
isCellTurn(cell(_, Up, Right, Down, Left)) :-
    % Check all combinations of turns, including anti-clockwise.
    (Up == 1, Right == 1, Down == 0, Left == 0);
    (Up == 0, Right == 1, Down == 1, Left == 0);
    (Up == 0, Right == 0, Down == 1, Left == 1);
    (Up == 1, Right == 0, Down == 0, Left == 1).


countConnections(cell(_, Up, Right, Down, Left), Count) :-
    Count is Up + Right + Down + Left.
