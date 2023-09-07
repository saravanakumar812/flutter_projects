import 'dart:io';

void main() {
  // Get the number from the user
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  // Get the number is  positive  or  negative checking in  using if / else if Statement
  if (number > 0) {
    // Get the number is checking
    //Get the number in  greater than is 0 & print is positive number
    print('This is a Positive Number.');
  } else if (number < 0) {
    //Get the number in  less than is 0 & print is negative number
    print('This is a Negative Number');
  }
}
