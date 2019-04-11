function finalTraits = dogfightGame(zeta,goodTraits)
tic
rng shuffle
% preallocates the array to store the numbers of the winners
winners = [];
% cell array to store an array with number of turns for each round for each
% game
fullnTurnsStore = {}; % row 1 is game number, row 2 is array with round numbers and # of turns
% cell array to store the bets from each round for each game
fullTotalBets = {};
% cell array to store the dice from each round for each game
fullTotalDice = {};
% cell array to store the player who lost and player who bsed for each
% round for each game
fullPlayerData = {};
%% loop that runs the game as many times as specified

[traitsWinner,traits] = dogfightGameLoop(zeta,winners,fullnTurnsStore,fullTotalBets,fullTotalDice,fullPlayerData,goodTraits);

%% Call output best traits function
finalTraits = outputTraitsStructure(traits,traitsWinner);
toc