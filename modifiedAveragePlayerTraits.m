function traits = modifiedAveragePlayerTraits(traits,traitsWinner,iC,weightOfConsistency)
% 4/12/19
% Thomas Kasl

if iC == 1
    traits(6).honesty = 0.5;
    traits(6).trust = 0.5;
    traits(6).aggressive = 0.5;
    traits(6).threshold = 0.5;
    traits(6).shifty = 0.5;
    traits(6).consideration = 0.5;
%elseif iC == 2
%    traits(6).honesty = traitsWinner(1).honesty;
%    traits(6).trust = traitsWinner(1).trust;
%    traits(6).aggressive = traitsWinner(1).aggressive;
%    traits(6).threshold = traitsWinner(1).threshold;
%    traits(6).shifty = traitsWinner(1).shifty;
%    traits(6).consideration = traitsWinner(1).consideration;
%elseif iC == 3
%    traits(6).honesty = (traitsWinner(1).honesty+traits(6).honesty)/2;
%    traits(6).trust = (traitsWinner(1).trust+traits(6).trust)/2;
%    traits(6).aggressive = (traitsWinner(1).aggressive+traits(6).aggressive)/2;
%    traits(6).threshold = (traitsWinner(1).threshold+traits(6).threshold)/2;
%    traits(6).shifty = (traitsWinner(1).shifty+traits(6).shifty)/2;
%    traits(6).consideration = (traitsWinner(1).consideration+traits(6).consideration)/2;
else
    weight1 = weightOfConsistency;
    weight2 = 10-weightOfConsistency;
    
    traits(6).honesty = ((weight2*traitsWinner(1).honesty)+(weight1*traits(6).honesty))/10;
    traits(6).trust = ((weight2*traitsWinner(1).trust)+(weight1*traits(6).trust))/10;
    traits(6).aggressive = ((weight2*traitsWinner(1).aggressive)+(weight1*traits(6).aggressive))/10;
    traits(6).threshold = ((weight2*traitsWinner(1).threshold)+(weight1*traits(6).threshold))/10;
    traits(6).shifty = ((weight2*traitsWinner(1).shifty)+(weight1*traits(6).shifty))/10;
    traits(6).consideration = ((weight2*traitsWinner(1).consideration)+(weight1*traits(6).consideration))/10;
end
end