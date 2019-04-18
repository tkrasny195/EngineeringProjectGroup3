function [pHonestArray,lies,truths] = modifiedpHonestyAdjust(pHonestArray,lies,truths,switchArray)

for i = 2:6
    condition = switchArray(i);
    switch condition
        case 1 % they lied
            liesN = lies(playerNumber);
            weight2 = (1/(1+1*liesN))*10;
            weight1 = 10-weight2;
            honestValue = pHonestArray(playerNumber);
            x = honestValue;
            newHonestValue = (weight1*x+weight2*(x/2))/10;
            pHonestArray(playerNumber) = newHonestValue;
        case 2 % they told the truth
            truthsN = truths(playerNumber);
            honestValue = pHonestArray(playerNumber);
            weight2 = (1/(1+0.1*truthsN))*10;
            weight1 = 10-weight2;
            x = honestValue;
            newHonestValue = (weight1*x+weight2*((1-x)/2+x))/10;
            pHonestArray(playerNumber) = newHonestValue;
        case 3
            % there is no change to pHonestArray for this player
    end
end