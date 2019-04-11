function finalFinalFinalFinalTraits = dogfight4NI
% Number of levels: 5
% Total games: 9589
% Estimated Run Time:  (Thomas)
level = 5;
iota = 7;
gamma = 7;
epsilon = 7;
zeta = 7;
n = 6;

for i = 1:6
    traits = dogfight3(gamma,epsilon,zeta,n);
    finalFinalFinalTraits(i).honesty = traits.honesty;
    finalFinalFinalTraits(i).trust = traits.trust;
    finalFinalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalFinalTraits(i).threshold = traits.threshold;
    finalFinalFinalTraits(i).shifty = traits.shifty;
    finalFinalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalFinalTraits = dogfightGame(iota,finalFinalFinalTraits);

string = gamesInLevel(level,n,zeta);

disp(string);