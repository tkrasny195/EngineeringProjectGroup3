function [winner] = simulationGame1
% Thomas Kasl
% 4/19/19

% randomize
rng 'shuffle';
% generate random players
numbPlayers = 5;
traits = generateTraits(numbPlayers);

% SET THE TRAITS OF THE GOOD PLAYER
traits(6).honesty = 0.2;
traits(6).trust = 0.1;
traits(6).aggressive = 0.6;
traits(6).threshold = 0.55;
traits(6).shifty = 0.99;
traits(6).consideration = 0.92;

% Initialize likelyBS
likelyBS = [1 1 1 1 1 1];
% Initialize perceived honesty array
pHonestArray = [0.5,0.5,0.5,0.5,0.5,0.5];
% number for each player to start with
startDice = 5;
% player dice number arrray
nsDice = playerDiceArray(startDice);
% randomly assigns one player to go first
turn = randi(6);
% logical variable to run rounds until a player wins
win = false;
% counter for number of lies and truths
lies = zeros(1,6);
truths = zeros(1,6);

% runs a game
[~,winner] = dogfightRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths);
