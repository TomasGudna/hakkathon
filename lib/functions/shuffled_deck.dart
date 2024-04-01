import 'dart:math';

/*
import 'shuffler.dart';
import 'deck_of_cards.dart';
*/

/*
Create a function called ShuffledDeck that uses the methods from

A new deck of cards
Shuffler
And when run, returns a shuffled deck of cards. No inputs, only output.
 */


  List<int> shuffler(List<int> inputList) {
    List<int> shuffledList = List.from(inputList);
    Random random = Random();
    for (int i = shuffledList.length - 1; i > 0; i--) {
      int randomIndex = random.nextInt(i + 1);
      int temp = shuffledList[i];
      shuffledList[i] = shuffledList[randomIndex];
      shuffledList[randomIndex] = temp;
    }
    return shuffledList;
  }

  void main() {
    List<int> inputList = List.generate(52, (index) => index + 1);
    print('Input List: $inputList');
    List<int> shuffledList = shuffler(inputList);
    print('Shuffled List: $shuffledList');
  }

