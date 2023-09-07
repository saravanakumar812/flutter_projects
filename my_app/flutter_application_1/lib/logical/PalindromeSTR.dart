void main() {
  String str = "saravana"; // The string to check

  if (isPalindrome(str)) {
    print("$str is a palindrome.");
  } else {
    print("$str is not a palindrome.");
  }
}

bool isPalindrome(String str) {
  int start = 0;
  int end = str.length - 1;

  while (start < end) {
    if (str[start] != str[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}
