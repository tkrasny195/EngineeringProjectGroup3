function [nsDice,turn,totalTurns,likelyBS,nDice,bets,dice,playerWhoLost,playerWhoBSed] = ...
    ldround(nsDice,turn,likelyBS)
% Plays 1 round of liar's dice using bet function and returns adjusted 
% numbers of dice for each player. Only one person will lose a die after 
% 1 round.
%   INPUTS
%    nsDice - an array with the number of dice for each player
%    turn - the number corresponding to the player who's turn it is
%    likelyBS - a 1x6 array with general percieved likelihood of calling BS
%               by each player
%   OUTPUTS
%    nsDice - an array with the number of dice for each player
%    turn - the number corresponding to the player who's turn it is
%    totalTurns - the total number of turns in this round
%    likelyBS - a 1x6 array with general percieved likelihood of calling BS
%               by each player
%    nDice - the total number of dice in play from this round
%    bets - cell array with all the bets from this round
%           the first row is the quantity
%           the second row is the number
%           the third row is the player whose turn it was
%    dice - a 2x6 array with the player number and the dice for each player
%           in this round
%           the first row is the player number
%           the second row is the dice the player had in hand
%    playerWhoLost - the number corresponding to the player who lost a die
%    playerWhoBSed - the number corresponding to the player who BSed
%
% 3/18/19
% Thomas Kasl

% calculates the total number of dice in play for decision usage
nDice = sum(nsDice);

% presets the #'s counters to 0
ones = 0;
twos = 0;
threes = 0;
fours = 0;
fives = 0;
sixes = 0;

%% Rolls the dice
% creates 1x6 cell array with vectors of random integers from 1 to 6
%  with lenghts corresponding to the number of dice each player has
%  for example if player 1 had 5 dice, then the first cell of the array
%  would containg a 1x5 vector with random integers
for i = 1:6
    dice{i} = randi(6,1,nsDice(i));
end
disp(dice)
%% counts the total real quantity of each number in all the dice rolls
for i = 1:6
    if nsDice(i) ~= 0
        for j = 1:nsDice(i)
            test = dice{i}(j);
            switch test
                case 1
                    ones = ones+1;
                case 2
                    twos = twos+1;
                case 3
                    threes = threes+1;
                case 4
                    fours = fours+1;
                case 5
                    fives = fives+1;
                case 6
                    sixes = sixes+1;
            end
        end
    end
end

% puts the real quantities of each number into an array
realQuants = [ones,twos,threes,fours,fives,sixes];
disp(realQuants)
%% preset variables for first turn
quant = 0; % the quantity of a certain number in the bet
numb = 0; % the number in the bet
bs = 0; % logical variable "BS"
bets = {}; % cell array that stores each bet for this round
totalTurns = 0; % the total number of turns in this round

%% loop that runs turns around the circle until "BS" is called
while ~bs % runs untill "BS" is called
    firstTurn = turn;
    totalTurns = totalTurns+1; % increments total turns counter
    goDice = dice{turn}; % the hand of the player on turn
    % runs turns operated by betting function until "BS" is called
    [quant,numb,bs,turn,bets,likelyBS] = betting(quant,numb,goDice,nDice,turn,bets,likelyBS); 
    if ~bs
        bets{1,totalTurns} = quant;
        bets{2,totalTurns} = numb;
    elseif bs
        bets{1,totalTurns} = 'BS';
        bets{2,totalTurns} = 'BS';
    end
    if turn >= 2
        bets{3,totalTurns} = turn-1;
    else 
        bets{3,totalTurns} = 6;
    end
end

%% Once BS is called, checks to see if bet wins or BS wins, and
% changes player dice numbers accordingly
if nsDice(firstTurn) ~= 1
    if realQuants(numb)+realQuants(1) >= quant % real quantity of number called is greater
                                 % than or equal to bet quantity
        nsDice(turn-1) = nsDice(turn-1)-1; % BS-er loses a die
        playerWhoLost = turn-1; % output for the player who lost a die
        playerWhoBSed = turn-1;
    else % real quantity is less than bet quantity
        nsDice(turn-2) = nsDice(turn-2)-1; % better (who had BS called on him,
                                           % loses a die
        playerWhoLost = turn-2; % output for the player who lost
        playerWhoBSed = turn-1;
    end
else
   if realQuants(numb) >= quant % real quantity of number called is greater
                                 % than or equal to bet quantity
        nsDice(turn-1) = nsDice(turn-1)-1; % BS-er loses a die
        playerWhoLost = turn-1; % output for the player who lost a die
        playerWhoBSed = turn-1;
    else % real quantity is less than bet quantity
        nsDice(turn-2) = nsDice(turn-2)-1; % better (who had BS called on him,
                                           % loses a die
        playerWhoLost = turn-2; % output for the player who lost
        playerWhoBSed = turn-1; 
   end
end

%% Reformats the dice array
for i = 1:6
    dice{2,i} = dice{1,i};
    dice{1,i} = i;
end

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
        
