function [quant, numb, bs] = normalTurn(goDice,traits,turn,nDice,bets,likelyBS,pHonestArray,nsDice,quant,numb)
% Description
%   INPUTS
%    goDice - see above
%    traits - see above
%    turn - see above
%    nDice - see above
%    bets - see above
%    likelyBS - see above
%    pHonestArray - see diceWeights
%    nsDice - see above
%    quant - see above
%    numb - see above
%   OUTPUTS
%    quant - a new quantity
%    numb - a new identity
%    bs - logical variable see above
%
% 4/1/19
% Thomas Kasl
% saves the input quantity for later use
oldQuant = quant;
oldNumb = numb;
%% Identity
[weightsArray] = diceWeights(bets, pHonestArray, turn, traits, nDice, nsDice, goDice);

max1 = max(weightsArray);
maxes = 0;

for i = 1:length(weightsArray)
    if weightsArray(i) == max1
        maxes = maxes+1;
        numbersWithMaxWeights(maxes) = i;
    end
end

index = randi(maxes);

numb = numbersWithMaxWeights(index);

%% Quantity
c = traits(turn).aggressive;
quantThreshold = probabilityThresholdtoQuantity(nDice,traits,turn);
if quant < c*quantThreshold
    quant = ceil(c*quantThreshold);
elseif quant >= c*quantThreshold
    quant = quant+1;
end

%% BS
if  oldQuant > quantThreshold
    bs = true;
elseif oldQuant == quantThreshold
    chance = rand;
    shifty = traits(turn).shifty;
    if chance <= shifty
        bs = true;
    elseif chance > shifty
        weightsArray(oldNumb) = [];
        max1 = max(weightsArray);
        maxes = 0;
        for i = 1:length(weightsArray)
            if weightsArray(i) == max1
                maxes = maxes+1;
                numbersWithMaxWeights(maxes) = i;
            end
        end
        index = randi(maxes);
        numb = numbersWithMaxWeights(index);
    end
end
    

        