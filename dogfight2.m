function finalFinalTraits = dogfight2(epsilon,zeta,n)
% Level 3
% all inputs should be 1 except for n
% n is noramlly 6 but can be anything
% 4/11/19
% Thomas Kasl

for i = 1:6
    traits = dogfight(zeta,n);
    finalTraits(i).honesty = traits.honesty;
    finalTraits(i).trust = traits.trust;
    finalTraits(i).aggressive = traits.aggressive;
    finalTraits(i).threshold = traits.threshold;
    finalTraits(i).shifty = traits.shifty;
    finalTraits(i).consideration = traits.consideration;
end


finalFinalTraits = dogfightGame(epsilon,finalTraits);