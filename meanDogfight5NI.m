function finalFinalFinalFinalFinalTraits = meanDogfight5NI(n,zeta,weightOfConsistency)
% Number of levels: 6
% Total games: 57541
% Estimated Run Time:  (Thomas)
% 4/12/19
% Thomas Kasl
level = 6;
delta = zeta;
iota = zeta;
gamma = zeta;
epsilon = zeta;

for i = 1:5
    traits = meanDogfight4(iota,gamma,epsilon,zeta,n,weightOfConsistency);
    finalFinalFinalFinalTraits(i).honesty = traits.honesty;
    finalFinalFinalFinalTraits(i).trust = traits.trust;
    finalFinalFinalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalFinalFinalTraits(i).threshold = traits.threshold;
    finalFinalFinalFinalTraits(i).shifty = traits.shifty;
    finalFinalFinalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalFinalFinalTraits = modifiedDogfightGame(delta,finalFinalFinalFinalTraits);

string = gamesInLevel(level,n,zeta);

disp(string);