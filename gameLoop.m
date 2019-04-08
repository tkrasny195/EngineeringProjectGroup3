function [fullnTurnsStore,fullTotalBets,fullTotalDice,winners] = gameLoop(n,winners,fullnTurnsStore,fullTotalBets,fullTotalDice,fullPlayerData)
% FOR Loop used to run each round of the game until there is a winner
%
% Zach Kreft and Zach Safford
% April 7, 2019

for iC = 1:n
    % Calls the generate traits function to generate traits structure for
    % each game
    numbPlayers = 5;
    traits = generateTraits(numbPlayers);
    % Initialize likelyBS
    likelyBS = ones(6);
    % Initialize perceived honesty array
    pHonestArray = ones(6);
    % cell array to store the bets from each round
    totalBets = {};
    % cell array to store the dice each player had for each round
    totalDice = {};
    % cell array to store the players who lost a die in each round and the
    % player who called BS in each round
    playerData = {};
    % number for each player to start with
    startDice = 5;
   
    % player dice number arrray
    [nsDice] = playerDiceArray(startDice);
    
    % randomly assigns one player to go first
    turn = randi(6);
    % logical variable to run rounds until a player wins
    win = false;
    % counter for number of rounds per game
    rounds = 0;
    % store total turns in each round
    nTurnsStore = {};
    % runs a game
    [nTurnsStore,totalBets,totalDice,playerData,winners] = runGame(rounds,nsDice,win,turn,likelyBS,traits,pHonestArray,nTurnsStore,totalBets,totalDice,playerData);
    % stores game data in array
    [fullnTurnsStore,fullTotalBets,fullTotalDice,fullPlayerData]...
    = fullDataArrays(iC,nTurnsStore,totalBets,totalDice,playerData,fullPlayerData);
end