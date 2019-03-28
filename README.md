# EngineeringProjectGroup3
Engineering Project Modeling Liar's Dice
# Variables in ldgame

n - number of games to be played

winners - a 1 x n array of the numbers corresponding to the winning players

fullnTurnsStore - a cell array with two rows, the first row is the game number and the second row contains an array with the first row being the round number and the second row being the total # of turns in that round

fullTotalBets - a cell array with two rows, the first row is the game number and the second row contains a cell array with all of the bets from each round of that game and the total number of dice in the corresponding round

fullTotalDice - a cell array with two rows, the first row containing the game number and the second row containing a cell array with the dice rolls for each player and each round

fullPlayerData - a cell array with two rows, the first row is game number, and the second row contains a cell array with the round playerWhoLost and playerWhoBSed data

totalBets - cell array to store the bets from each round

totalDice - cell array to store the dice each player had for each round

playerData - cell array to store the players who lost a die and who called BS in each round

startDice - number of dice each player starts with (5)

nTurnsStore - cell array with total number of turns in each round

nsDice - a 1x6 array with the number of dice each player currently has in this game

turn - a very important variable that represents the number of the player whose turn it is

win - a logical variable to run rounds until a player wins the current game

rounds - counter for number of rounds in current game

numZs - counter variable to see how many players have zero dice

winner - the number of the player who won the current game

# Variables in ldround

nsDice - an array with the number of dice for each player

turn - the number corresponding to the player who's turn it is

likelyBS - a 1x6 array with general percieved likelihood of calling BS by each player

nsDice - an array with the number of dice for each player

turn - the number corresponding to the player who's turn it is

totalTurns - the total number of turns in this round

likelyBS - a 1x6 array with general percieved likelihood of calling BS by each player

nDice - the total number of dice in play from this round

bets - cell array with all the bets from this round
       the first row is the quantity
       the second row is the number
       the third row is the player whose turn it was
       
dice - a 2x6 array with the player number and the dice for each player in this round
       the first row is the player number
       the second row is the dice the player had in hand
       
playerWhoLost - the number corresponding to the player who lost a die

playerWhoBSed - the number corresponding to the player who BSed

