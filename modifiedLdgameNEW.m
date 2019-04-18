function [bestTraits, winnersArray] = modifiedLdgameNEW(n,weightOfConsistency)
% 4/12/19
% Thomas Kasl

% ensure randomness
rng shuffle

%% SET DESIRED weightOfConsistency

% this value affects how much the weight of change of the average player.
% The input of this can range from 0 to 10 non-inclusive  (0,10) or
% probably (5,10)
% Given a value of 9, then the average player won't change very much after
% 2 iterations but will average less with the following winners.
% Given a value of less than 5, then the average player will average more
% towards the following winners (THIS IS NOT ADVISED).
% Best function will result if value is between 5 and 10. (5,10)
%weightOfConsistency = 9;

%% loop that runs the game as many times as specified

[traitsWinner,traits,traitsWinners, winnersArray,iC] = modifiedGameLoop(n,weightOfConsistency);

%% Call output best traits function
bestTraits = modifiedOutputTraitsStructure(traits,traitsWinner,weightOfConsistency,traitsWinners,iC);