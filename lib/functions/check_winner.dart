/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */

import 'package:BlackJack/functions/functions.dart';

int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll,

int updateBankRoll(List<int> houseHand, List<int> playerHand, int currentBet, int currentBankRoll) {
int playerScore = calculateScore(playerHand);
int houseScore = calculateScore(houseHand);

if ((playerScore > houseScore || houseScore > 21) && playerScore <= 21) {
currentBankRoll += currentBet; // Player wins
} else if (playerScore < houseScore || playerScore > 21) {
currentBankRoll -= currentBet; // Player loses
}
// In case of a tie, nothing happens to the bankroll
return currentBankRoll;
}

int calculateScore(List<int> hand) {
int score = 0;
int aces = 0;
for (int card in hand) {
if (card == 1) { // Ace
aces += 1;
score += 11;
} else if (card > 10) { // Face cards
score += 10;
} else {
score += card;
}
}

// Adjusting aces from 11 to 1 if score is over 21
while (score > 21 && aces > 0) {
score -= 10;
aces -= 1;
}

return score;
}


}
