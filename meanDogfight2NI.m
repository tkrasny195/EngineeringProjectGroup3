function finalFinalTraits = meanDogfight2NI(n,zeta,weightOfConsistency)
% Number of levels: 3
% Total games: 265
% Estimated Run Time: 287.48 sec.  (Thomas)
% 4/12/19
% Thomas Kasl
level = 3;
epsilon = zeta;

for i = 1:5
    traits = meanDogfightNI(n,zeta,weightOfConsistency);
    finalTraits(i).honesty = traits.honesty;
    finalTraits(i).trust = traits.trust;
    finalTraits(i).aggressive = traits.aggressive;
    finalTraits(i).threshold = traits.threshold;
    finalTraits(i).shifty = traits.shifty;
    finalTraits(i).consideration = traits.consideration;
end

testingVariable = false;

finalFinalTraits = modifiedDogfightGameLoop(epsilon,finalTraits,testingVariable);

string = gamesInLevel(level,n,zeta);

disp(string);