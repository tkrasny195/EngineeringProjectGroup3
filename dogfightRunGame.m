function [traits,winner] = dogfightRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths)
% 4/11/19
% Thomas Kasl
rounds = 0;
while ~win
        % runs ldround function reducing the total number of die by 1 each
        % round
        [nsDice,turn,likelyBS,pHonestArray,lies,truths] = dogfightLdroundNEW(nsDice,turn,likelyBS,traits,pHonestArray,lies,truths,rounds);
        % increments number of rounds counter
        rounds = rounds+1;
        % a counting variable to check how many players have zero dice
        numZs = 0;
        % loop to check for a winner
        for iT = 1:6
            if nsDice(iT) == 0 % if player iT has 0 dice then increment counter by 1
                numZs = numZs+1; % increment counter
            elseif nsDice(iT) ~= 0 % if player does not have zero dice then winner
                winner = iT;
            end
            if numZs == 5 % if 5 players have 0 dice
                win = true; % then logical variable win is true and while loop stops
            end
        end
end