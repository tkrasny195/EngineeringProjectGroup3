function finalFinalTraits = dogfight2NI
% Number of levels: 3
% Total games: 265
% Estimated Run Time: 162.02  (Thomas)
level = 3;
epsilon = 7;
zeta = 7;
n = 6;

for i = 1:6
    traits = dogfight(zeta,n);
    finalTraits(i).honesty = traits.honesty;
    finalTraits(i).trust = traits.trust;
    finalTraits(i).aggressive = traits.aggressive;
    finalTraits(i).threshold = traits.threshold;
    finalTraits(i).shifty = traits.shifty;
    finalTraits(i).consideration = traits.consideration;
end


finalFinalTraits = dogfightGame(epsilon,finalTraits);

string = gamesInLevel(level,n,zeta);

disp(string);