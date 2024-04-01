import 'dart:math';

/*
Create a function called Shuffler which takes a List of integer as an input
and outputs a shuffled list of integers.

I.e, it should return a RANDOMIZED version of the list.
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


