function finalFinalFinalFinalTraits = dogfight4(iota,gamma,epsilon,zeta,n,weightOfConsistency)
% % Level 5
% all inputs should be 1 except for n
% n is noramlly 6 but can be anything
%
% 4/11/19
% Thomas Kasl

for i = 1:6
    traits = dogfight3(gamma,epsilon,zeta,n,weightOfConsistency);
    finalFinalFinalTraits(i).honesty = traits.honesty;
    finalFinalFinalTraits(i).trust = traits.trust;
    finalFinalFinalTraits(i).aggressive = traits.aggressive;
    finalFinalFinalTraits(i).threshold = traits.threshold;
    finalFinalFinalTraits(i).shifty = traits.shifty;
    finalFinalFinalTraits(i).consideration = traits.consideration;
end


finalFinalFinalFinalTraits = dogfightGame(iota,finalFinalFinalTraits);