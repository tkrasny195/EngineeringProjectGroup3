function [string1,string2] = calcWins(winnersArray)
num6 = 0;
for i = 1:length(winnersArray)
    if winnersArray(i) == 6
        num6 = num6+1;
    end
end
percentageWins = (num6/length(winnersArray))*100;

num6half = 0;
runs = 0;

for i = ceil(length(winnersArray)/2):length(winnersArray)
    runs = runs+1;
    if winnersArray(i) == 6
        num6half = num6half+1;
    end
end
 percentWinsHalf = (num6half/runs)*100;
 
 string1 = ['Percent Wins: ' num2str(percentageWins) '%'];
 string2 = ['Percent Wins (2nd 1/2): ' num2str(percentWinsHalf) '%'];