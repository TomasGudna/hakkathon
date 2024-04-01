import 'score_function.dart';

/*
Create a function called CheckIfBusted.

This function should accept a List
of integers (hand of cards) calculate the score, and return true if busted
ie. score is above 21, and false if not busted.

NOTE: You can work on this function before "Score function" is completed,
just make sure to merge them once you are done.

Example inputs

[10 11 1] -> False
[13 13 7] -> True
[1 1 2] -> True
...ie use output of score function and check if busted.
 */


bool CheckIfBusted(List<int> hand) {
  int score = 0;
  int numberOfAces = 0; // To keep track of the number of aces in the hand

  // Calculate the total score of the hand
  for (int card in hand) {
    if (card == 11) {
      numberOfAces++; // Increment the count of aces
    }
    score += card;
  }

  // Adjust the score if there are aces and the hand is busted
  while (score > 21 && numberOfAces > 0) {
    score -=
    10; // Subtract 10 points for each ace (treat ace as 1 instead of 11)
    numberOfAces--; // Decrement the count of aces
  }

  // Check if the adjusted score is still above 21 (busted)
  if (score > 21) {
    return true;
  } else {
    return false;
  }
}
