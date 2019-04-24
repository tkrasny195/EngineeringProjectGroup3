%% setTraits.m
% Thomas Kasl
% 4/18/19
clear
clc
for i = 1:1
    bunchOfTraits(i).honesty = 0.5;
    bunchOfTraits(i).trust = 0.5;
    bunchOfTraits(i).aggressive = 0.5;
    bunchOfTraits(i).threshold = 0.6;
    bunchOfTraits(i).shifty = 0.5;
    bunchOfTraits(i).consideration = 0.5;
end
for i = 3:3
    bunchOfTraits(i).honesty = 0.5;
    bunchOfTraits(i).trust = 0.5;
    bunchOfTraits(i).aggressive = 0.5;
    bunchOfTraits(i).threshold = 0.6;
    bunchOfTraits(i).shifty = 0.5;
    bunchOfTraits(i).consideration = 0.5;
end
for i = 5:5
    bunchOfTraits(i).honesty = 0.5;
    bunchOfTraits(i).trust = 0.5;
    bunchOfTraits(i).aggressive = 0.5;
    bunchOfTraits(i).threshold = 0.6;
    bunchOfTraits(i).shifty = 0.5;
    bunchOfTraits(i).consideration = 0.5;
end
for i = 2:2
    bunchOfTraits(i).honesty = 0.5;
    bunchOfTraits(i).trust = 0.5;
    bunchOfTraits(i).aggressive = 0.5;
    bunchOfTraits(i).threshold = 0.6;
    bunchOfTraits(i).shifty = 0.5;
    bunchOfTraits(i).consideration = 0.5;
end
% bunchOfTraits(6).honesty = 0.57;
% bunchOfTraits(6).trust = 0.50;
% bunchOfTraits(6).aggressive = 0.60;
% bunchOfTraits(6).threshold = 0.65;
% bunchOfTraits(6).shifty = 0.7;
% bunchOfTraits(6).consideration = 0.14;
bunchOfTraits(4).honesty = 0.5;
bunchOfTraits(4).trust = 0.5;
bunchOfTraits(4).aggressive = 0.5;
bunchOfTraits(4).threshold = 0.6;
bunchOfTraits(4).shifty = 0.5;
bunchOfTraits(4).consideration = 0.5;
bunchOfTraits(6).honesty = 0.5;
bunchOfTraits(6).trust = 0.5;
bunchOfTraits(6).aggressive = 0.5;
bunchOfTraits(6).threshold = 0.6;
bunchOfTraits(6).shifty = 0.5;
bunchOfTraits(6).consideration = 0.5;


bestPlayerNumber = 6;
save('goodTraitsSave','bunchOfTraits','bestPlayerNumber');
