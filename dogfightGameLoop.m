function [finalTraits,winnersDogfight,mostOftenWinner,bunchOfTraits] = dogfightGameLoop(zeta,goodTraits)
% 4/11/19
% Thomas Kasl
winnersDogfight = [];
for iC = 1:zeta
    % MODIFIED TRAITS SET
    traits = goodTraits;
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
    % counter for number of rounds per game
    rounds = 0;
    % counter for number of lies and truths
    lies = zeros(1,6);
    truths = zeros(1,6);
    
    % runs a game
    [traits,winner] = dogfightRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths);
    % stores game data in array
 
    winnersDogfight = [winnersDogfight, winner];
end
mostOftenWinner = mode(winnersDogfight);
x = mostOftenWinner;
finalTraits.honesty = traits(x).honesty;
finalTraits.trust = traits(x).trust;
finalTraits.aggressive = traits(x).aggressive;
finalTraits.threshold = traits(x).threshold;
finalTraits.shifty = traits(x).shifty;
finalTraits.consideration = traits(x).consideration;

bunchOfTraits = traits;
