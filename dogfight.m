function finalTraits = dogfight(zeta,n)
% % Level 2
% all inputs should be 1 except for n
% n is noramlly 6 but can be anything
%
% 4/11/19
% Thomas Kasl
% April 11, 2019
%
for i = 1:6
    traits = ldgameNEW(n);
    goodTraits(i).honesty = traits.honesty;
    goodTraits(i).trust = traits.trust;
    goodTraits(i).aggressive = traits.aggressive;
    goodTraits(i).threshold = traits.threshold;
    goodTraits(i).shifty = traits.shifty;
    goodTraits(i).consideration = traits.consideration;
end

finalTraits = dogfightGame(zeta,goodTraits);