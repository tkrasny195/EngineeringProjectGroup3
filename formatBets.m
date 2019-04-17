function [cArray,turn] = formatBets(array,initialPosition,nsDice)
% INPUTS: betsString
%   Value pulled from the GUI's bet input, an array of the past bets made
%   this round
% OUTPUTS: formattedArray
%   A cell array of [2x1] arrays containing the [quantity;bet]
[x,L] = size(array);
for i = 2:L
number = array(1,i);
fArray(1,(i-1)) = number;
end

position = initialPosition;
lA = length(fArray);
for iX = 1:lA
    betStr = num2str(fArray(1,iX));
    lS = length(betStr);
     if lS == 2
            quantValue = str2double(betStr(1:1));
            betValue = str2double(betStr(2:2));
     else
            quantValue = str2double(betStr(1:2));
            betValue = str2double(betStr(3:3));
     end
     cArray{1,iX} = [quantValue, betValue, position];
     position = incrementTurn(position,nsDice);
end
turn = position;










