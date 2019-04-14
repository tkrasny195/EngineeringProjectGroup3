%% TestingShit.m
n = 100;
weightOfConsistency = 9;
control = 1;
switch control
    case 1
        tic
        modifiedLdgameNEW(n,weightOfConsistency)
        toc
    case 2
        tic
        dogfightNI(weightOfConsistency)
        toc
    case 3
        tic
        dogfightNI2(weightOfConsistency)
        toc
    case 4
        tic
        dogfightNI3(weightOfConsistency)
        toc
    case 5
        tic
        dogfightNI4(weightOfConsistency)
        toc
    case 6
        tic
        dogfightNI5(weightOfConsistency)
        toc
end
