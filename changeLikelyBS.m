function likelyBS = changeLikelyBS(rounds,turn,nsDice,bets,totalTurns,nDice,likelyBS)
% 4/15/19
% Thomas Kasl

turnOfInterest = reduceTurnNumber(turn,nsDice);
[a,~] = size(bets);
x = a-1;

if rounds == 0
    likelyBS(turnOfInterest) = binocdf((bets{x,1}(1,1),nDice,(1/3));
else
    likelyBS(turnOfInterest) = (binocdf((bets{x,1}(1,1),nDice,(1/3))+likelyBS(turnOfInterest))/2;
end
