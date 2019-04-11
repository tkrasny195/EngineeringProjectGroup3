function finalFinalTraits = dogfight2(epsilon,zeta,n)
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

for i = 1:5
    traits = dogfight(zeta,n);
    finalTraits(i).honesty = traits.honesty;
    finalTraits(i).trust = traits.trust;
    finalTraits(i).aggressive = traits.aggressive;
    finalTraits(i).threshold = traits.threshold;
    finalTraits(i).shifty = traits.shifty;
    finalTraits(i).consideration = traits.consideration;
end


finalFinalTraits = dogfightGame(epsilon,finalTraits);