function finalTraits = dogfight(zeta,n,weightOfConsistency)
% % Level 2
% 4/11/19
% Thomas Kasl
% April 11, 2019
%
for i = 1:6
    traits = modifiedldgameNEW(n,weightOfConsistency);
    goodTraits(i).honesty = traits.honesty;
    goodTraits(i).trust = traits.trust;
    goodTraits(i).aggressive = traits.aggressive;
    goodTraits(i).threshold = traits.threshold;
    goodTraits(i).shifty = traits.shifty;
    goodTraits(i).consideration = traits.consideration;
end

finalTraits = dogfightGame(zeta,goodTraits);