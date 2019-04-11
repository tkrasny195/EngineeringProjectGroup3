function [traitsWinner,traits] = dogfightGameLoop(zeta,winners,fullnTurnsStore,fullTotalBets,fullTotalDice,fullPlayerData,goodTraits)
for iC = 1:zeta
    % MODIFIED TRAITS SET
    traits = goodTraits;
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
    traits = averagePlayerTraits(traits,traitsWinner,iC);
    
    % Initialize likelyBS
    likelyBS = [1 1 1 1 1 1];
    % Initialize perceived honesty array
    pHonestArray = [0.5,0.5,0.5,0.5,0.5,0.5];
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
    nsDice = playerDiceArray(startDice);
    
    % randomly assigns one player to go first
    turn = randi(6);
    % logical variable to run rounds until a player wins
    win = false;
    % counter for number of rounds per game
    rounds = 0;
    % store total turns in each round
    nTurnsStore = {};
    % counter for number of lies and truths
    lies = zeros(1,6);
    truths = zeros(1,6);
    
    % runs a game
    [nTurnsStore,totalBets,totalDice,playerData,winners,traitsWinner,traits] = runGame(rounds,nsDice,win,turn,likelyBS,traits,pHonestArray,nTurnsStore,totalBets,totalDice,playerData,lies,truths,iC,winners);
    % stores game data in array
    fullnTurnsStore{1,iC} = iC;
    fullnTurnsStore{2,iC} = nTurnsStore;
    fullTotalBets{1,iC} = iC;
    fullTotalBets{2,iC} = totalBets;
    fullTotalDice{1,iC} = iC;
    fullTotalDice{2,iC} = totalDice;
    fullPlayerData{1,iC} = iC;
    fullPlayerData{2,iC} = playerData;
    % save the traits of the average player
    traitsSave(1).honesty = traits(6).honesty;
    traitsSave(1).trust = traits(6).trust;
    traitsSave(1).aggressive = traits(6).aggressive;
    traitsSave(1).threshold = traits(6).threshold;
    traitsSave(1).shifty = traits(6).shifty;
    traitsSave(1).consideration = traits(6).consideration;
end