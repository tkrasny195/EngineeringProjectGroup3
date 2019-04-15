function games = gamesCalc(level,games,nGamesInFirstLevel,nGamesInHigherLevels)
% 4/11/19
% Thomas Kasl
if level == 1
    games = nGamesInFirstLevel;
else
    games = nGamesInFirstLevel*games+nGamesInHigherLevels;
end