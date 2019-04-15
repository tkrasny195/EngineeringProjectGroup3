function likelyBS = changeLikelyBS(bs,rounds,turn,nsDice,bets,totalTurns,nDice,likelyBS)
% 4/15/19
% Thomas Kasl

turnOfInterest = reduceTurnNumber(turn,nsDice);

if bs
    if rounds == 0
        matrix1 = cell2mat(bets);
        likelyBS(turnOfInterest) = binocdf((matrix1(1,(totalTurns-1))),nDice,(1/3));
    else
        matrix1 = cell2mat(bets);
        likelyBS(turnOfInterest) = (binocdf((matrix1(1,(totalTurns-1))),nDice,(1/3))+likelyBS(turnOfInterest))/2;
    end
end