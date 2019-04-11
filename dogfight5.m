function finalFinalFinalFinalFinalTraits = dogfight5(delta,iota,gamma,epsilon,zeta,n)
% Level 6
% all inputs should be 1 except for n
% n is noramlly 6 but can be anything
% 4/11/19
% 
% Thomas Kasl
for i = 1:6
    traits = dogfight4(iota,gamma,epsilon,zeta,n);
    finalFinalFinalFinalTraits(i).honesty = traits.honesty;
    finalFinalFinalFinalTraits(i).trust = traits.trust;
    finalFinalFinalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalFinalFinalTraits(i).threshold = traits.threshold;
    finalFinalFinalFinalTraits(i).shifty = traits.shifty;
    finalFinalFinalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalFinalFinalTraits = dogfightGame(delta,finalFinalFinalFinalTraits);