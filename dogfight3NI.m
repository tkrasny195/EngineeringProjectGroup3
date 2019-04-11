function finalFinalFinalTraits = dogfight3NI
% Number of levels: 4
% Total games: 1597
% Estimated Run Time: 964.45 sec. (Thomas)
level = 4;
gamma = 7;
epsilon = 7;
zeta = 7;
n = 6;

for i = 1:6
    traits = dogfight2(epsilon,zeta,n);
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