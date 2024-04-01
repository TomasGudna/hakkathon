
/*
Create a function called DealCard

The function should accept a list of integers as an input. It should remove
the first item in that list, and return said item. Check example code

List<int> deck = [1, 2, 3, 4];
int myCard = DealCard(deck);
print(myCard); // Should print 1
print(deck); // Should print [2, 3, 4]
 */

int? DealCard(List<int> deck) {
  // Check if the deck is not empty
  if (deck.isNotEmpty) {
    // Remove the first item from the deck and return it
    return deck.removeAt(0);
  } else {
    // If the deck is empty, return null or throw an exception, depending on your requirements
    return null; // You can return null or handle this case differently based on your needs
  }
}

//Tómas var hér

void main() {
  List<int> deck = [1, 2, 3, 4];

  // Deal a card from the deck
  int? myCard = DealCard(deck);

  // Print the dealt card and the updated deck
  print(myCard); // Should print 1
  print(deck); // Should print [2, 3, 4]
}