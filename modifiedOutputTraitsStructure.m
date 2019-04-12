function bestTraits = modifiedOutputTraitsStructure(traits,traitsWinner,weightOfConsistency)
% 4/12/19
% Thomas Kasl

%% Output Traits Structure
% adds the weighted average from last game
weight1 = weightOfConsistency;
weight2 = 10-weightOfConsistency;

traits(6).honesty = ((weight2*traitsWinner(1).honesty)+(weight1*traits(6).honesty))/10;
traits(6).trust = ((weight2*traitsWinner(1).trust)+(weight1*traits(6).trust))/10;
traits(6).aggressive = ((weight2*traitsWinner(1).aggressive)+(weight1*traits(6).aggressive))/10;
traits(6).threshold = ((weight2*traitsWinner(1).threshold)+(weight1*traits(6).threshold))/10;
traits(6).shifty = ((weight2*traitsWinner(1).shifty)+(weight1*traits(6).shifty))/10;
traits(6).consideration = ((weight2*traitsWinner(1).consideration)+(weight1*traits(6).consideration))/10;

% output of best traits
bestTraits(1).honesty = traits(6).honesty;
bestTraits(1).trust = traits(6).trust;
bestTraits(1).aggressive = traits(6).aggressive;
bestTraits(1).threshold = traits(6).threshold;
bestTraits(1).shifty = traits(6).shifty;
bestTraits(1).consideration = traits(6).honesty;