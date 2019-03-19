function [p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,... 
    p6Ndice,turn, totalTurns] = ...
    ldround(p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,p6Ndice,turn)
% Plays 1 round of liar's dice using bet function and returns adjusted 
% numbers of dice for each player. Only one person will lose a die after 
% 1 round.
%   INPUTS
%    p1Ndice - number of dice p1 has remaining
%    p2Ndice - number of dice p2 has remaining
%    p3Ndice - number of dice p3 has remaining
%    p4Ndice - number of dice p4 has remaining
%    p5Ndice - number of dice p5 has remaining
%    p6Ndice - number of dice p6 has remaining
%    turn - the number corresponding to the player who's turn it is
%   OUTPUTS
%    p1Ndice - number of dice p1 has remaining
%    p2Ndice - number of dice p2 has remaining
%    p3Ndice - number of dice p3 has remaining
%    p4Ndice - number of dice p4 has remaining
%    p5Ndice - number of dice p5 has remaining
%    p6Ndice - number of dice p6 has remaining
%    turn - the number corresponding to the player who's turn it is
%    totalTurns - the total number of turns in this round
%
% 3/18/19
% Thomas Kasl

% puts the numbers of dice for each player into an array
nsDice = [p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,p6Ndice];

% calculates the total number of dice in play for decision usage
nDice = p1Ndice+p2Ndice+p3Ndice+p4Ndice+p5Ndice+p6Ndice;

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
    goDice = dice{turn}; % the hand of the player on turn
    % runs turns operated by betting function until "BS" is called
    [quant,numb,bs,turn,bets] = betting(quant,numb,goDice,nDice,turn,bets); 
    totalTurns = totalTurns+1; % increments total turns counter
end

%% Once BS is called, checks to see if bet wins or BS wins, and
% changes player dice numbers accordingly
if realQuants(numb) >= quant % real quantity of number called is greater
                             % than or equal to bet quantity
    nsDice(turn-1) = nsDice(turn-1)-1; % BS-er loses a die
else % real quantity is less than bet quantity
    nsDice(turn-2) = nsDice(turn-2)-1; % better (who had BS called on him,
                                       % loses a die
end
%% Player die number variables are reassigned for output
p1Ndice = nsDice(1);
p2Ndice = nsDice(2);
p3Ndice = nsDice(3);
p4Ndice = nsDice(4);
p5Ndice = nsDice(5);
p6Ndice = nsDice(6);

function [quant,numb,bs,turn,bets,likelyBS] = betting(quant,numb,goDice,nDice,turn,bets,nsDice)
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
%    likelyBS - a 1x6 array with general perceived percent likelihood to call BS for each player
%   OUTPUTS
%    quant - the new current bet with quantity
%    numb -  the new current bet with specific number
%    bs - a logical variable that is true if BS is called, false if not
%    turn - the number corresponding to the player whose turn it is
%    bets - an array with all the past bets in this round
if turn+1 > 6
    turn = 1;
else
    turn = turn+1;
end
