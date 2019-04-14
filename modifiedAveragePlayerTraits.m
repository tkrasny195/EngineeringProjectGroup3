function [traits,traitsWinners] = modifiedAveragePlayerTraits(traits,traitsWinner,iC,weightOfConsistency)
% 4/12/19
% Thomas Kasl


if iC == 1
    traits(6).honesty = 0.5;
    traits(6).trust = 0.5;
    traits(6).aggressive = 0.5;
    traits(6).threshold = 0.5;
    traits(6).shifty = 0.5;
    traits(6).consideration = 0.5;
    traitsWinners(1).honesty = 1;
    traitsWinners(2).trust = 1;
    traitsWinners(3).aggressive = 1;
    traitsWinners(4).threshold = 1;
    traitsWinners(5).shifty = 1;
    traitsWinners(6).consideration = 1;
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
    traitsWinners(iC).honesty = traitsWinner(1).honesty;
    traitsWinners(iC).trust = traitsWinner(1).trust;
    traitsWinners(iC).aggressive = traitsWinner(1).aggressive;
    traitsWinners(iC).threshold = traitsWinner(1).threshold;
    traitsWinners(iC).shifty = traitsWinner(1).shifty;
    traitsWinners(iC).consideration = traitsWinner(1).consideration;
    traits(6).honesty = mean([traitsWinners.honesty]);
    traits(6).trust = mean([traitsWinners.trust]);
    traits(6).aggressive = mean([traitsWinners.aggressive]);
    traits(6).threshold = mean([traitsWinners.threshold]);
    traits(6).shifty = mean([traitsWinners.shifty]);
    traits(6).consideration = mean([traitsWinners.consideration]);
   % weight1 = weightOfConsistency;
   % weight2 = 10-weightOfConsistency;
   % 
   % traits(6).honesty = ((weight2*traitsWinner(1).honesty)+(weight1*traits(6).honesty))/10;
   % traits(6).trust = ((weight2*traitsWinner(1).trust)+(weight1*traits(6).trust))/10;
   % traits(6).aggressive = ((weight2*traitsWinner(1).aggressive)+(weight1*traits(6).aggressive))/10;
   % traits(6).threshold = ((weight2*traitsWinner(1).threshold)+(weight1*traits(6).threshold))/10;
   % traits(6).shifty = ((weight2*traitsWinner(1).shifty)+(weight1*traits(6).shifty))/10;
   % traits(6).consideration = ((weight2*traitsWinner(1).consideration)+(weight1*traits(6).consideration))/10;
end
end