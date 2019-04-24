function [string1,string2,percentageWins] = calcWins(winnersDogfight,mostOftenWinner)
num6 = 0;
for i = 1:length(winnersDogfight)
    if winnersDogfight(i) == mostOftenWinner
        num6 = num6+1;
    end
end
percentageWins = (num6/length(winnersDogfight))*100;

num6half = 0;
runs = 0;

for i = ceil(length(winnersDogfight)/2):length(winnersDogfight)
    runs = runs+1;
    if winnersDogfight(i) == mostOftenWinner
        num6half = num6half+1;
    end
end
 percentWinsHalf = (num6half/runs)*100;
 
 string1 = ['Percent Wins: ' num2str(percentageWins) '%'];
 string2 = ['Percent Wins (2nd 1/2): ' num2str(percentWinsHalf) '%'];