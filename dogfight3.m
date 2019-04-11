function finalFinalFinalTraits = dogfight3(gamma,epsilon,zeta,n)
% Level 4
% all inputs should be 1 except for n
% n is noramlly 6 but can be anything
% 4/11/19
% Thomas Kasl
for i = 1:6
    traits = dogfight2(epsilon,zeta,n);
    finalFinalTraits(i).honesty = traits.honesty;
    finalFinalTraits(i).trust = traits.trust;
    finalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalTraits(i).threshold = traits.threshold;
    finalFinalTraits(i).shifty = traits.shifty;
    finalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalTraits = dogfightGame(gamma,finalFinalTraits);