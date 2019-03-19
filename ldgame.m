function [winners,fullnTurnsStore,c,d] = ldgame(n)
% plays n games of liar's dice with 6 players starting with 5 dice each and
% starting with a random player.
%   INPUT
%    n - number of games to be played
%   OUTPUTS
%    winners - a 1 x n array of the numbers corresponding to the winning
%              players
%    fullnTurnsStore - a cell array with two rows, the first row is the
%                      game number and the second row contains an array
%                      with the first row being the round number and the
%                      second row being the total # of turns in that round
%    c - another something
%    d - another something
%
% 3/19/19
% Thomas Kasl

% preallocates the array to store the numbers of the winners
winners = zeros(1,1);
% cell array to store an array with number of turns for each round for each
% game
fullnTurnsStore = {}; % row 1 is game number, row 2 is array with round numbers and # of turns

%% loop that runs the game as many times as specified
for iC = 1:n
    % presets each player to have 5 dice, 6 players
    p1Ndice = 5;
    p2Ndice = 5;
    p3Ndice = 5;
    p4Ndice = 5;
    p5Ndice = 5;
    p6Ndice = 5;
    % randomly assigns one player to go first
    turn = randi(6);
    % logical variable to run rounds until a player wins
    win = false;
    % counter for number of rounds per game
    rounds = 0;
    % store total turns in each round
    nTurnsStore = {};
    % runs a game
    while ~win
        % runs ldround function reducing the total number of die by 1 each
        % round
        [p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,p6Ndice,turn,totalTurns] =...
        ldround(p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,p6Ndice,turn);
        % increments number of rounds counter
        rounds = rounds+1;
        % stores total turns in round in nTurnsStore array
        nTurnsStore(1,rounds) = rounds;
        nTurnsStore(2,rounds) = totalTurns;
        % a counting variable to check how many players have zero dice
        numZs = 0;
        % an array of the player dice numbers
        nsDice = [p1Ndice,p2Ndice,p3Ndice,p4Ndice,p5Ndice,p6Ndice];
        % loop to check for a winner
        for iT = 1:6
            if nsDice(iT) == 0 % if player iT has 0 dice then increment counter by 1
                numZs = numZs+1; % increment counter
            elseif nsDice(iT) ~= 0 % if player does not have zero dice then winner
                winner = iT;
            end
            if numZs == 5 % if 5 players have 0 dice
                win = true; % then logical variable win is true and while loop
                            % stops
                winners(1,iC) = winner; % the player who one is notated
            end
        end
    end
    
    fullnTurnsStore(1,iC) = iC;
    fullnTurnsStore(2,iC) = nTurnsStore;
end
