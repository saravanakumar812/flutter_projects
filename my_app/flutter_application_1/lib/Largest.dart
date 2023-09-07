void main() {
  List<int> numbers = [5, 10, 12, 3, 8, 9, 2];

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }

  print('The second largest number is: $secondLargest');
}
