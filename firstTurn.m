function[numb, quant] = firstTurn(goDice,traits,turn,nDice)
% Determines the first bet of the round based on the players dice in hand,
% the turn number telling what player's turn it is, and the total number of
% dice. The first bet simply consists of number(identity) and a quantity.
%   INPUTS
%    goDice - see above
%    traits - see above
%    nDice - see above
%   OUTPUTS
%    numb -  the number (identity) of the bet
%    quant - the quantity of the bet
% 4/1/19
% Thomas Kasl, Zach 

%% Idenity
probs = rand;

if probs >= traits(turn.honesty)
    beHonest = true;
else
    beHonest = false;
end

ones = 0;
twos = 0;
threes = 0;
fours = 0;
fives = 0;
sixes = 0;

for i = 1:length(goDice)
    diceId = goDice(i);
        switch diceId
            case 1
                ones = ones + 1;
            case 2
                twos = twos + 1;
            case 3
                threes = threes + 1;
            case 4
                fours = fours + 1;
            case 5
                fives = fives + 1;
            case 6 
                sixes = sixes + 1;
        end   
end



realQuants = [twos+ones, threes+ones, fours+ones, fives+ones, sixes+ones];



max1 = max(realQuants);

maxQuants = zeros(1,5);
maxes = 0;

for i = 1:5
    if realQuants(i) == max1
        maxes = maxes + 1;
        maxQuants(maxes) = i + 1; 
    end
end



if beHonest
    index = randi(length(maxQuants));
    numb = maxQuants(index); 
else
    notmaxQuants = [2,3,4,5,6];
   for i = 1:length(maxQuants)
       for j = 2:6
         tests = maxQuants(i);
         if tests == j
             notmaxQuants(j) = [];             
         end              
       end 
   end
   index = randi(length(notmaxQuants));
   numb = notmaxQuants(index);
end


%% Quanity
quantThreshold = probabilityThresholdtoQuantity(nDice,traits,turn);
quant = traits(turn).aggressive*quantThreshold;


