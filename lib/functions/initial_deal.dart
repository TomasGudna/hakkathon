/*
Create a function called InitialDeal. This function should accept THREE lists
of integers as an input: playerHand, dealerHand, deck

Deal two cards to the playerHand and two cards to the
dealerHand from the deck. Make sure to deal in turns...

Use the solution from "Draw a card" to do this

Example

List<int> deck = [1, 2, 3, 4, 5, 6];
List<int> playerHand= [];
List<int> dealerHand= [];
InitialDeal(playerHand, dealerHand, deck);

print(deck); // Should print [5, 6]
print(playerHand); // Should print [1, 3]
print(dealerHand); // Should print [2, 4]
Added to make it work
 */

import 'draw_card.dart';

void InitialDeal(List<int> playerHand, List<int> houseHand, List<int> deck) {

  List <int> deck = [1,2,3,4,5,6,7,8,9,10,11,12,13];
  List <int> playerHand.add(DrawCard(deck));
  List <int> dealerHand.add(DrawCard(deck));
  List <int> playerHand.add(DrawCard(deck));
  List <int> dealerHand.add(DrawCard(deck));

}