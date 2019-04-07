function [advice] = adviceF(dice,prevBet,playerWhoLost,totalDice,% bestPlayer)

% adviceF provides the advised bet for the user given inputs about the dice
% in the player's hand, the previous bet, and which player previously lost.
%
% INPUT
%   dice -      values of the dice in the users hand (1x6 array) where the
%                   *lost dice are assigned the value 0
%   prevBet -   quantities and values of previous player's bet (array)
%                   *ex. [4,5] = 4 fives
%                   *min: 2 integers     max: 3 integers
%   playerWhoLost - player who lost the last round (integer 1:6)
%
% OUTPUT
%   advice - recommended user bet (string)
%
% April 7, 2019
% Zachary Safford

traits(1).threshhold=threshhold(bestPlayer);
turn=1;

% call a function to get the player threshhold (quantThreshold)if it isn't
% calculated in the normalTurnAdvice fucntion.

% call altered betting function to get conditions? (normalTurnAdvice)
normalTurnAdvice

% set advice variable as a string and output
if bsAdvice==true
    advice='Call BS';
elseif bsAdvice==false
    betting;
    advice=(num2str(quant),',',num2str(numb));
end