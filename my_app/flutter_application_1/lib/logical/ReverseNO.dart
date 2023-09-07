void main() {
  int number = 78562345; // The number to reverse

  int reversedNumber = reverseNumber(number);

  print("Original number: $number");
  print("Reversed number: $reversedNumber");
}

int reverseNumber(int number) {
  int reversedNumber = 0;

  while (number != 0) {
    int digit = number % 10;
    reversedNumber = (reversedNumber * 10) + digit;
    number ~/= 10;
  }

  return reversedNumber;
}
