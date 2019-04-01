function [weightsArray] = diceWeights(bets, pHonestArray, turn, traits, nDice, nsDice, goDice)
% 
% Calculates the weight for each dice identity using the equation:
% WeightsArray = trusting*percieved honesty*quantity/total number of dice*
% number of dice in player's hand
%
% INPUT:
%   bets - the bets from the current round
%   pHonestArray - the general array containing the percieved honesty for
%       each player
%   turn - the current turn, or player
%   traits - structure containing the traits
%   nDice - the total number of dice present for a round
%   nsDice - the number of dice in each player's hand
%   goDice - the hand of the player who's turn it is
%
% OUTPUT:
%   weightsArray - 1x6 array with the weighted value for each dice identity
%   for a particular player

% Initialize Weights Array
weightsArray = zeros(1,6);

% number of bets made in the current round, max can be 5
betsSize = size(bets);
nTotalBets = betsSize(2);

if nbets > 5;
    nbets = 5;
end

% number of dice in current player's hand
handLength = length(goDice);

% Generates Weights
for ibet = 0:4
    quantityBet = bets{1,nTotalBets - ibet};

        weightsArray(bets{2,nTotalBets-ibet}) = weightsArray(bets{2,nTotalBets-ibet}) +...
            (traits(turn).trust * pHonestArray(bets{3, nTotalBets - ibet})...
            * quantityBet / nDice * nsDice(bets{3, nTotalBets - ibet}));
        
end

for nHand = 1:handLength
    weightsArray(goDice(nHand)) = (weightsArray(goDice(nHand)) + ...
        goDice(nHand) * traits(turn).honesty);
end