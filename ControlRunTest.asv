%% ControlRunTest.m
% 4/12/19
% Thomas Kasl
clear
clc
n = 11;
zeta = 15; % the number of games in each level of dogfight between the winners
weightOfConsistency = 5;
control = 4.1;
switch control
    case 1
        tic
        [traits, winnersArray] = modifiedLdgameNEW(n,weightOfConsistency);
        toc
        levels = false;
    case 2
        tic
        dogfightNI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 2;
 %   case 2.1
%         tic
%         meanDogfightNI(n,zeta,weightOfConsistency)
%         toc
%         levels = true;
%         level = 2;
    case 3
        tic
        dogfight2NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 3;
    case 3.1
        tic
        meanDogfight2NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 3;
    case 4
        tic
        dogfight3NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 4;
    case 4.1
        tic
        [winner, bunchOfTraits] = meanDogfight3NI(n,zeta,weightOfConsistency);
        toc
        levels = true;
        level = 4;
    case 5
        tic
        dogfight4NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 5;
    case 5.1
        tic
        meanDogfight4NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 5;
    case 6
        tic
        dogfight5NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 6;
    case 6.1
        tic
        meanDogfight5NI(n,zeta,weightOfConsistency)
        toc
        levels = true;
        level = 6;
end
if levels
    results = gamesInLevel(level,n,zeta);
else
    results = num2str(n);
end

if control == 1
    disp(' ');
    disp(traits);
end
disp(['Number of games: ', results]);
disp(['Weight factor: ',num2str(weightOfConsistency)]);
disp(' ');
if control == 1
    [string1,string2] = calcWins(winnersArray);
    disp(string1)
    disp(string2)
end
% load gong.mat; 
% sound(y);
% load handel.mat;
% sound(y, 2*Fs);
beep
