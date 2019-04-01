%smallDiceImage = imread('diceimage2.jpg');
%[ny nx n] = size(smallDiceImage);

%% STUFF:
%for k=1:3
%    smallDiceImage(:,:,k)=flipud(smallDiceImage(:,:,k));
%end
%axis = ([0,6,0,4]);
%xf = 0;
%yf = 0;
%aspectRatio = ny/nx;
%diceWidth = 2.5;
%diceHeight = diceWidth * aspectRatio;
%smallDiceImage= image('CData', smallDiceImage,...
%               'Parent', gca,...
%               'Xdata', [xf, xf+diceHeight],...
%               'Ydata', [yf, yf+diceHeight]);

%% PARSING:
%unparsedBet = '(4,5)';
%if strcmp(unparsedBet(1), '(')
%    unparsedBet = unparsedBet(2:end);
%end
%if strcmp(unparsedBet(2), ',')
%    unparsedBet = [unparsedBet(1),unparsedBet(3:end)];
%elseif length(unparsedBet) >= 3 && strcmp(unparsedBet(3), ',')
%    unparsedBet = [unparsedBet(1:2),unparsedBet(4:end)];
%end
%if strcmp(unparsedBet(end),')')
%    L = length(unparsedBet);
%    unparsedBet = unparsedBet(1:(L-1));
%end

%% IMAGE ROTATING
arrow = imread('arrow1.png');
imshow(arrow);

    
 
               