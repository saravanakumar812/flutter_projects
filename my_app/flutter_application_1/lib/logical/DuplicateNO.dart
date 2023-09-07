void main() {
  String str = "saravanakumar"; // The string to find duplicate characters

  List<String> duplicates = findDuplicateCharacters(str);

  print("Duplicate characters in $str: ${duplicates.join(', ')}");
}

List<String> findDuplicateCharacters(String str) {
  List<String> duplicates = [];
  Set<String> visitedCharacters = Set<String>();

  for (int i = 0; i < str.length; i++) {
    String character = str[i];
    if (visitedCharacters.contains(character) &&
        !duplicates.contains(character)) {
      duplicates.add(character);
    } else {
      visitedCharacters.add(character);
    }
  }

  return duplicates;
}
