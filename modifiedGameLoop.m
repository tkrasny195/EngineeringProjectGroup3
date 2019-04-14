function [traitsWinner,traits,traitsWinners, winnersArray,iC] = modifiedGameLoop(n,weightOfConsistency)
% 4/12/19
% Thomas Kasl

winnersArray = [];

for iC = 1:n
    % Calls the generate traits function to generate traits structure for
    % each game
    numbPlayers = 5;
    traits = generateTraits(numbPlayers);
    if iC ~= 1
        traits(6).honesty = traitsSave(1).honesty;
        traits(6).trust = traitsSave(1).trust;
        traits(6).aggressive = traitsSave(1).aggressive;
        traits(6).threshold = traitsSave(1).threshold;
        traits(6).shifty = traitsSave(1).shifty;
        traits(6).consideration = traitsSave(1).consideration;
    end
    
    % initialize traitsWinner
    if iC == 1
        traitsWinner(1).nothing = 0;
    end
    
    % Call averagePlayerTraits function
    [traits,traitsWinners] = modifiedAveragePlayerTraits(traits,traitsWinner,iC,weightOfConsistency);
    
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
    [traitsWinner,traits, winnersArray] = modifiedRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths, winnersArray);
    
    % save the traits of the average player
    traitsSave(1).honesty = traits(6).honesty;
    traitsSave(1).trust = traits(6).trust;
    traitsSave(1).aggressive = traits(6).aggressive;
    traitsSave(1).threshold = traits(6).threshold;
    traitsSave(1).shifty = traits(6).shifty;
    traitsSave(1).consideration = traits(6).consideration;
end