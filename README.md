# EngineeringProjectGroup3
Engineering Project Modeling Liar's Dice


# Variables in ldgame

fullPlayerData - a cell array with two rows, the first row is game number, and the second row contains a cell array with the round playerWhoLost and playerWhoBSed data

fullTotalBets - a cell array with two rows, the first row is the game number and the second row contains a cell array with all of the bets from each round of that game and the total number of dice in the corresponding round

fullTotalDice - a cell array with two rows, the first row containing the game number and the second row containing a cell array with the dice rolls for each player and each round

fullnTurnsStore - a cell array with two rows, the first row is the game number and the second row contains an array with the first row being the round number and the second row being the total # of turns in that round

n - number of games to be played

nTurnsStore - cell array with total number of turns in each round

nsDice - a 1x6 array with the number of dice each player currently has in this game

numZs - counter variable to see how many players have zero dice

playerData - cell array to store the players who lost a die and who called BS in each round

rounds - counter for number of rounds in current game

startDice - number of dice each player starts with (5)

totalBets - cell array to store the bets from each round

totalDice - cell array to store the dice each player had for each round

turn - a very important variable that represents the number of the player whose turn it is

win - a logical variable to run rounds until a player wins the current game

winner - the number of the player who won the current game

winners - a 1 x n array of the numbers corresponding to the winning players
n - number of games to be played


# Variables in ldround

bets - cell array with all the bets from this round
       the first row is the quantity
       the second row is the number
       the third row is the player whose turn it was
       
bs - a logical variable alway false if no one has called B.S
     true immediately after one person has called B.S. in their turn
     
dice - a 2x6 array with the player number and the dice for each player in this round
       the first row is the player number
       the second row is the dice the player had in hand
       
diceId -  a variable for the switch to the count the real quatities

firstTurn - a placeholder variable that saves the player number of the person who started the round

goDice - the hand of the player whose turn it is

likelyBS - a 1x6 array with general percieved likelihood of calling BS by each player

likelyBS - a 1x6 array with general percieved likelihood of calling BS by each player

nDice - the total number of dice in play from this round

nsDice - an array with the number of dice for each player

nsDice - an array with the number of dice for each player

numb - the identity of the number in the bet (e.g. four FIVES)

ones, twos, threes, fours, fives, sixes - counters for real quantities

playerWhoBSed - the number corresponding to the player who BSed

playerWhoLost - the number corresponding to the player who lost a die

quant - the quantity of a certain number in the bet (e.g. FOUR fives)

realQuants - a 1x6 array with the quantities of ones,twos,threes,...,sixes

totalTurns - the total number of turns in this round

turn - the number corresponding to the player who's turn it is


# Variables in betting function

bets - a cell array with all the past bets in the round

goDice - the dice that the player(turn) has in hand

likelyBS - a 1x6 array with general perceived likelihood of calling BS by each player

nsDice - the total number of dice that does not change until end of round

numb - the certain number of the current bet

quant - the current bet for the quantity of a certain number

turn - the player number of the player(turn)
