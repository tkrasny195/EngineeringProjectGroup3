%% ControlRunTest.m
% 4/12/19
% Thomas Kasl
n = 2;
zeta = 2; % the number of games in each level of dogfight between the winners
weightOfConsistency = 9;
control = 5;
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
        dogfight2NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 3;
    case 4
        tic
        dogfight3NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 4;
    case 5
        tic
        dogfight4NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 5;
    case 6
        tic
        dogfight5NI(n,zeta,weightOfConsistency)
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
