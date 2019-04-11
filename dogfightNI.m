function finalTraits = dogfightNI
% Number of levels: 2
% Total games: 43
% Estimated Run Time: 60.07 sec. (Thomas)
level = 2;
zeta = 7;
n = 6;
for i = 1:6
    traits = ldgameNEW(n);
    goodTraits(i).honesty = traits.honesty;
    goodTraits(i).trust = traits.trust;
    goodTraits(i).aggressive = traits.aggressive;
    goodTraits(i).threshold = traits.threshold;
    goodTraits(i).shifty = traits.shifty;
    goodTraits(i).consideration = traits.consideration;
end

finalTraits = dogfightGame(zeta,goodTraits);

string = gamesInLevel(level,n,zeta);

disp(string);

