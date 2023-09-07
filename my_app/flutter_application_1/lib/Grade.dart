import 'dart:io';

void main() {
  // Get the marks from the user
  stdout.write('Enter the marks: ');
  int marks = int.parse(stdin.readLineSync()!);

  // Determine the grade based on marks
  String grade;
  if (marks >= 90) {
    grade = 'A';
  } else if (marks >= 80) {
    grade = 'B';
  } else if (marks >= 70) {
    grade = 'C';
  } else if (marks >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  // Display the grade
  print('Your grade is: $grade');
}
