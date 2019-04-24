%% callDogfight.m
% Thomas Kasl
% 4/19/19
rng 'shuffle'
clc

zeta = 5;

load('goodTraitsSave');
goodTraits = bunchOfTraits;
bestPlayer = bestPlayerNumber;

tic
[finalTraits,winnersDogfight,mostOftenWinner] = simpleDogfightNI(zeta,goodTraits);
toc

[string1,string2] = calcWins(winnersDogfight,mostOftenWinner);
disp(string1)
disp(string2)
disp(['Best player should be: ' num2str(bestPlayer)])
disp(['Most often winner was: ' num2str(mostOftenWinner)])

beep


