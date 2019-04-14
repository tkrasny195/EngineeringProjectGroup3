function [nsDice,turn,likelyBS,pHonestArray,lies,truths] = dogfightLdroundNEW(nsDice,turn,likelyBS,traits,pHonestArray,lies,truths,rounds)
% 4/11/19
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
dice = rollingDice(nsDice);

%% counts the total real quantity of each number in all the dice rolls
realQuants = quantDice(nsDice,dice,ones,twos,threes,fours,fives,sixes);

%% preset variables for first turn
quant = 0; % the quantity of a certain number in the bet
numb = 0; % the number in the bet
bs = 0; % logical variable "BS"
bets = {}; % cell array that stores each bet for this round
totalTurns = 0; % the total number of turns in this round

%% loop that runs turns around the circle until "BS" is called
    [quant,numb,likelyBS,totalTurns,turn,playerOfInterest,playerOfInterest2,bets] = runTurns(dice,nsDice,quant,numb,nDice,bets,...
   traits,pHonestArray,turn,totalTurns,likelyBS,bs,rounds);
    
%% Once BS is called, checks to see if bet wins or BS wins, and
% changes player dice numbers accordingly
[BScheckresults,nsDice] = BScheck(realQuants,quant,playerOfInterest,playerOfInterest2,nsDice,numb);

%% Rounds counter FOR DEBUGGING PURPOSES

%% Adjust the pHonestArray
[pHonestArray,lies,truths] = pHonestyAdjust(bets,dice,pHonestArray,lies,truths,nDice,traits,rounds);

