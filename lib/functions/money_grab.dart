import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int currentBank) {
  int bet;
  do {
    print('Type in amount you would like to bet?');
    String? input = stdin.readLineSync();
    bet = int.tryParse(input ?? '') ?? 0;
    if (bet > currentBank || bet <= 0) {
      print("Invalid bet. Please enter a valid amount.");
    }

  } while (bet > currentBank || bet <= 0);
  return bet;
}

int BuyIn() {
  int buyIn;
  do {
    print("How much would you like to buy in?");
    String? input = stdin.readLineSync();
    buyIn = int.tryParse(input ?? '') ?? -1; // Default to -1 for invalid input
    if (buyIn <= 0) {
      print("Invalid amount. Please enter a positive number.");
    }
  } while (buyIn <= 0);
  return buyIn;

}

