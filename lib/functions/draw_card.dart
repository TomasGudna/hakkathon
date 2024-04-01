import 'deal_card.dart';

/*
Create a function called DrawCard. This function should accept TWO lists
of integers as an input: hand, deck

It should deal a card from the deck to the hand.

Example
List<int> deck = [1, 2, 3, 4, 5, 6];
List<int> hand= [];
DrawCard(hand, deck );

print(deck); // Should print [2, 3, 4, 5, 6]
print(hand); // Should print [1]

 */
List <int> deck = [1,2,3,4,5,6,7,8,9,10,11,12,13];
List <int> hand = [];
void DrawCard(List<int> hand, List<int> deck) {
  if (deck.isNotEmpty) {
    hand.add(deck.removeAt(0));
    DrawCard(hand, deck);
    print(deck);
    print(hand);
  }
}




