void main() {
  int number = 123454321; // The number to check

  if (isPalindrome(number)) {
    print("$number is a palindrome number.");
  } else {
    print("$number is not a palindrome number.");
  }
}

bool isPalindrome(int number) {
  int originalNumber = number;
  int reversedNumber = 0;

  while (number > 0) {
    int digit = number % 10;
    reversedNumber = (reversedNumber * 10) + digit;
    number ~/= 10;
  }

  return reversedNumber == originalNumber;
}
