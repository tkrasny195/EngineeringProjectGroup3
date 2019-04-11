function finalTraits = dogfight(zeta,n)
% Recieves 5 best traits from ldGameNew.m. Runs these 5 against a 6th
% player that begins with 0.5 for each trait. It then averages the 6th
% player with the winning profiles for n games.
%
% INPUT
%   - zeta: number of games run to determine the finalTraits
%
% OUTPUT
%   - finalTraits: final, aggregated traits to be used in the GUI
% 
% April 11, 2019
%
tic
for i = 1:5
    traits = ldgameNEW(n);
    goodTraits(i).honesty = traits.honesty;
    goodTraits(i).trust = traits.trust;
    goodTraits(i).aggressive = traits.aggressive;
    goodTraits(i).threshold = traits.threshold;
    goodTraits(i).shifty = traits.shifty;
    goodTraits(i).consideration = traits.consideration;
end
toc

finalTraits = dogfightGame(zeta,goodTraits);



