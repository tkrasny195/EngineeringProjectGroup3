function [winner] = simulationGame1(v1,v2,v3,v4,v5,v6)
% Thomas Kasl
% 4/19/19

% randomize
rng 'shuffle';
% generate random players
numbPlayers = 5;
traits = generateTraits(numbPlayers);

% SET THE TRAITS OF THE GOOD PLAYER
traits(6).honesty = v1;
traits(6).trust = v2;
traits(6).aggressive = v3;
traits(6).threshold = v4;
traits(6).shifty = v5;
traits(6).consideration = v6;

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
