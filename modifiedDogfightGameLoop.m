function finalTraits = modifiedDogfightGameLoop(zeta,goodTraits,testingVariable)
% 4/11/19
% Thomas Kasl
winnersDogFight = [];
preset = cell(1,zeta-1);
preset(:) = {0};
traitsWinners =  struct('honesty',preset,'trust',preset,...
    'aggressive',preset,'threshold',preset,'shifty',preset,...
    'consideration',preset);
for iC = 1:zeta
    % MODIFIED TRAITS SET
    traits = goodTraits;
    % add average player
    % Weight of consistency
    weightOfConsistency = 6;
    
    % things
    if iC == 1
        traitsWinner(1).honesty = 1;
        traitsWinner(1).trust = 1;
        traitsWinner(1).aggressive = 1;
        traitsWinner(1).threshold = 1;
        traitsWinner(1).shifty = 1;
        traitsWinner(1).consideration = 1;
    end
    
    
    [traits,traitsWinners] = modifiedAveragePlayerTraits(traits,traitsWinner,iC,weightOfConsistency,traitsWinners);
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
    % Preallocate structure
    
    
    % runs a game
    [traits,winner] = dogfightRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths);
    % stores game data in array
    
    traitsWinner(1).honesty = traits(winner).honesty;
    traitsWinner(1).trust = traits(winner).trust;
    traitsWinner(1).aggressive = traits(winner).aggressive;
    traitsWinner(1).threshold = traits(winner).threshold;
    traitsWinner(1).shifty = traits(winner).shifty;
    traitsWinner(1).consideration = traits(winner).consideration;
end
finalTraits = modifiedOutputTraitsStructure(traits,traitsWinner,weightOfConsistency,traitsWinners,iC);
