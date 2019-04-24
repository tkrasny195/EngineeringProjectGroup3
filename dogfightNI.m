function [finalTraits,winnersDogfight,mostOftenWinner,bunchOfTraits] = dogfightNI(n,zeta,weightOfConsistency)
% Number of levels: 2
% Total games: 43
% Estimated Run Time: 60.07 sec. (Thomas)
% 4/12/19
% Thomas Kasl
level = 2;

for i = 1:6
    traits = modifiedLdgameNEW(n,weightOfConsistency);
    goodTraits(i).honesty = traits.honesty;
    goodTraits(i).trust = traits.trust;
    goodTraits(i).aggressive = traits.aggressive;
    goodTraits(i).threshold = traits.threshold;
    goodTraits(i).shifty = traits.shifty;
    goodTraits(i).consideration = traits.consideration;
end

[finalTraits,winnersDogfight,mostOftenWinner,bunchOfTraits] = dogfightGame(zeta,goodTraits);


