void main() {
  String str = "Saravana!, Kumar"; // The string to reverse

  String reversedStr = reverseString(str);

  print("Original string: $str");
  print("Reversed string: $reversedStr");
}

String reverseString(String str) {
  String reversedStr = '';

  for (int i = str.length - 1; i >= 0; i--) {
    reversedStr += str[i];
  }

  return reversedStr;
}
