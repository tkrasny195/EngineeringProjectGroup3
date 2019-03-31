function [quant,numb,bs,turn,bets,likelyBS] = betting(quant,numb,goDice,nDice,turn,bets,nsDice,likelyBS)
% The player whose turn it is uses the current bet (quant and numb) and his
% dice (goDice) and the number of dice (nDice) to make a decision about
% whether to increase the bet or to call BS on the current bet.
%   INPUTS
%    quant - the current bet for quantity of a certain number
%    numb - the certain number of the current bet 
%    goDice - the dice that the player(turn) has in hand
%    nDice -  the total number of dice that does not change throughout the
%             round
%    turn - the number corresponding to the player whose turn it is
%    bets - an array with all the past bets in this round
%    nsDice - an array with the number of dice each player has
%    likelyBS - a 1x6 array with general percieved likelihood of calling BS
%               by each player
%   OUTPUTS
%    quant - the new current bet with quantity
%    numb -  the new current bet with specific number
%    bs - a logical variable that is true if BS is called, false if not
%    turn - the number corresponding to the player whose turn it is
%    bets - an array with all the past bets in this round
%    likelyBS - a 1x6 array with general percieved likelihood of calling BS
%               by each player

if turn+1 > 6
    turn = 1;
else
    turn = turn+1;
end
% changes turn number if the current turn is assigned to a player with 0
% dice
while nsDice(turn) == 0
    if turn+1 > 6
        turn = 1;
    else
        turn = turn+1;
    end
end
