function likelyBS = changeLikelyBSG(rounds,turn,nsDice,bets,nDice,likelyBS)
% 4/15/19
% Thomas Kasl

turnOfInterest = turn;
[b,a] = size(bets);
x = a-1;

if rounds == 0
    likelyBS(turnOfInterest) = binocdf((bets{1,x}(1,1)),nDice,(1/3));
else
    likelyBS(turnOfInterest) = (binocdf((bets{1,x}(1,1)),nDice,(1/3))+likelyBS(turnOfInterest))/2;
end