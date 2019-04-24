%% setTraitsEvaluation.m
% Thomas Kasl
% 4/18/19
clear
clc
randomPlayerNumbers = randsample(6,6);
shortPlayerNumbers = zeros(1,5);
for i = 1:5
    shortPlayerNumbers(i) = randomPlayerNumbers(i);
end

bestPlayerNumber = randomPlayerNumbers(6);


for i = shortPlayerNumbers
    % Random values for honesty
    a = 0.4;
    b = 0.6;
    r1 = (b-a)*rand + a;
    
    % Random values for trust
    a = 0.5;
    b = 0.7;
    r2 = (b-a)*rand + a;
    
    % Random value for aggressive
    a = 0.65;
    b = 0.95;
    r3 = (b-a)*rand + a;
    
    % Random values for threshold
    a = 0.5;
    b = 0.75;
    r4 = (b-a)*rand + a;
    
    % Random values for shifty
    a = 0.2;
    b = 0.9;
    r5 = (b-a)*rand + a;
    
    % Random values for consideration
    a = 0.2;
    b = 0.9;
    r6 = (b-a)*rand + a;
    
    bunchOfTraits(i).honesty = r1;
    bunchOfTraits(i).trust = r2;
    bunchOfTraits(i).aggressive = r3;
    bunchOfTraits(i).threshold = r4;
    bunchOfTraits(i).shifty = r5;
    bunchOfTraits(i).consideration = r6;
end

bunchOfTraits(bestPlayerNumber).honesty = 0.5;
bunchOfTraits(bestPlayerNumber).trust = 0.4;
bunchOfTraits(bestPlayerNumber).aggressive = 0.6;
bunchOfTraits(bestPlayerNumber).threshold = 0.6;
bunchOfTraits(bestPlayerNumber).shifty = 0.4;
bunchOfTraits(bestPlayerNumber).consideration = 0.8;

save('goodTraitsSave','bunchOfTraits','bestPlayerNumber');