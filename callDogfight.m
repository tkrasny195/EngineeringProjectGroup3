%% callDogfight.m
% Thomas Kasl
% 4/19/19
rng 'shuffle'
clc

zeta = 15;

load('goodTraitsSave');
goodTraits = bunchOfTraits;

tic
[finalTraits,winnersDogfight,mostOftenWinner] = simpleDogfightNI(zeta,goodTraits);
toc

[string1,string2] = calcWins(winnersDogfight,mostOftenWinner);
disp(string1)
disp(string2)