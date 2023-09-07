void main() {
  int n = 15; // Number of Fibonacci numbers to generate

  print("Fibonacci Series:");
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
