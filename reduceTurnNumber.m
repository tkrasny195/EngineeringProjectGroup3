function turnOfInterest = reduceTurnNumber(turn,nsDice)
% reduces the turn number and accounts for players with 0 dice
if turn-1 < 1
    turnOfInterest = 6;
else
    turnOfInterest = turn-1;
end

while nsDice(turnOfInterest) == 0
    if turnOfInterest-1 < 1
        turnOfInterest = 6;
    else
        turnOfInterest = turnOfInterest-1;
    end
end