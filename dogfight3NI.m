function finalFinalFinalTraits = dogfight3NI(n,zeta,weightOfConsistency)
% Number of levels: 4
% Total games: 1597
% Estimated Run Time: 964.45 sec. (Thomas)
% 4/12/19
% Thomas Kasl
level = 4;
gamma = zeta;
epsilon = zeta;

for i = 1:6
    traits = dogfight2(epsilon,zeta,n,weightOfConsistency);
    finalFinalTraits(i).honesty = traits.honesty;
    finalFinalTraits(i).trust = traits.trust;
    finalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalTraits(i).threshold = traits.threshold;
    finalFinalTraits(i).shifty = traits.shifty;
    finalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalTraits = dogfightGame(gamma,finalFinalTraits);

string = gamesInLevel(level,n,zeta);

disp(string);