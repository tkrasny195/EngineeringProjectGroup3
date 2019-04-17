function turn = incrementTurn(turn,nsDice)
% Increments the turn and makes sure that the current turn is not set to a
% player with 0 dice.
if turn+1 > 6
    turn = 1;
else
    turn = turn+1;
end
% changes turn number if the current turn is assigned to a player with 0
% dice
while nsDice(turn) == 0
    if turn+1 > 6
        turn = 1;
    else
        turn = turn+1;
    end
end