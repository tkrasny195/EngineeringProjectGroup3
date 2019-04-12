function results = gamesInLevel(level,nGamesInFirstLevel,nGamesInHigherLevels)
% 4/11/19
% Thomas Kasl
games = gamesCalc(1,0,nGamesInFirstLevel,nGamesInHigherLevels);

for i = 2:level

    games = gamesCalc(i,games,nGamesInFirstLevel,nGamesInHigherLevels);
    
end

numberOfGames = games;
results = ['Number of games is: ' num2str(numberOfGames)];
