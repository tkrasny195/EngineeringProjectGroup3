%% ControlRunTest.m
% 4/12/19
% Thomas Kasl
n = 100;
zeta = 7; % the number of games in each level of dogfight between the winners
weightOfConsistency = 9;
control = 1;
switch control
    case 1
        tic
        modifiedLdgameNEW(n,weightOfConsistency)
        toc
        levels = false;
    case 2
        tic
        dogfightNI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 2;
    case 3
        tic
        dogfightNI2(weightOfConsistency)
        toc
        levels = true;
        level = 3;
    case 4
        tic
        dogfightNI3(weightOfConsistency)
        toc
        levels = true;
        level = 4;
    case 5
        tic
        dogfightNI4(weightOfConsistency)
        toc
        levels = true;
        level = 5;
    case 6
        tic
        dogfightNI5(weightOfConsistency)
        toc
        levels = true;
        level = 6;
end
if levels
results = gamesInLevel(level,n,zeta);
else 
    results = num2str(n);
end
disp(['Number of games: ', results]);
disp(['Weight factor: ',num2str(weightOfConsistency)]);
