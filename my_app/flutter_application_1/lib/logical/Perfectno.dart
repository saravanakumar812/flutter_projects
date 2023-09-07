void main() {
  int number = 32; // The number to check

  if (isPerfectNumber(number)) {
    print("$number is a perfect number.");
  } else {
    print("$number is not a perfect number.");
  }
}

bool isPerfectNumber(int number) {
  int sum = 0;

  for (int i = 1; i < number; i++) {
    if (number % i == 0) {
      sum += i;
    }
  }

  return sum == number;
}
