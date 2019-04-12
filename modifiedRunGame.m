function [traitsWinner,traits] = modifiedRunGame(nsDice,win,turn,likelyBS,traits,pHonestArray,lies,truths)
% runs rounds until one player wins
%
% Zach Kreft and Zach Safford
% April 7, 2019
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
                win = true; % then logical variable win is true and while loop
                % stops
                traitsWinner(1).honesty = traits(winner).honesty;
                traitsWinner(1).trust = traits(winner).trust;
                traitsWinner(1).aggressive = traits(winner).aggressive;
                traitsWinner(1).threshold = traits(winner).threshold;
                traitsWinner(1).shifty = traits(winner).shifty;
                traitsWinner(1).consideration = traits(winner).consideration;
            end
        end
end