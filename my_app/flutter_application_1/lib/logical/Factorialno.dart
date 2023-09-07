void main() {
  int number = 5; // The number to calculate the factorial

  int factorial = calculateFactorial(number);

  print("The factorial of $number is $factorial");
}

int calculateFactorial(int number) {
  if (number == 0) {
    return 1;
  } else {
    return number * calculateFactorial(number - 1);
  }
}
