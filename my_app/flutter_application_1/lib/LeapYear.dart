import 'dart:io';

void main() {
  // Get the year from the user
  stdout.write('Enter a year: ');
  int year = int.parse(stdin.readLineSync()!);
// Get the year Leap  or  not LeapYear checking in if/else Statement
  if (year % 4 == 0) {
    // Get the year is checking
    //Get the year is divded by 4 & remaining is equal to 0 print is leap year
    print('This is year is LeapYear.');
  } else {
    //Get the year is divded by 4 & remaining is not equal to 0 print is leap year
    print('This is year is not LeapYear.');
  }
}
