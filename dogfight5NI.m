function finalFinalFinalFinalFinalTraits = dogfight5NI
% Number of levels: 6
% Total games: 57541
% Estimated Run Time:  (Thomas)
level = 6;
delta = 7;
iota = 7;
gamma = 7;
epsilon = 7;
zeta = 7;
n = 6;

for i = 1:6
    traits = dogfight4(iota,gamma,epsilon,zeta,n);
    finalFinalFinalFinalTraits(i).honesty = traits.honesty;
    finalFinalFinalFinalTraits(i).trust = traits.trust;
    finalFinalFinalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalFinalFinalTraits(i).threshold = traits.threshold;
    finalFinalFinalFinalTraits(i).shifty = traits.shifty;
    finalFinalFinalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalFinalFinalTraits = dogfightGame(delta,finalFinalFinalFinalTraits);

string = gamesInLevel(level,n,zeta);

disp(string);