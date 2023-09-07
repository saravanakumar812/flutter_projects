import 'dart:math';

void main() {
  int number = 154; // The number to check

  if (isArmstrongNumber(number)) {
    print("$number is an Armstrong number.");
  } else {
    print("$number is not an Armstrong number.");
  }
}

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int numberOfDigits = number.toString().length;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numberOfDigits) as int;
    number ~/= 10;
  }

  return sum == originalNumber;
}
