%% setTraits.m
% Thomas Kasl
% 4/18/19
for i = 1:5
    bunchOfTraits(i).honesty = rand;
    bunchOfTraits(i).trust = rand;
    bunchOfTraits(i).aggressive = rand;
    bunchOfTraits(i).threshold = rand;
    bunchOfTraits(i).shifty = rand;
    bunchOfTraits(i).consideration = rand;
end

bunchOfTraits(6).honesty = 0.23;
bunchOfTraits(6).trust = 0.08;
bunchOfTraits(6).aggressive = 0.62;
bunchOfTraits(6).threshold = 0.51;
bunchOfTraits(6).shifty = 0.99;
bunchOfTraits(6).consideration = 0.92;




save('goodTraitsSave','bunchOfTraits');
