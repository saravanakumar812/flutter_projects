import 'dart:io';

void main() {
  // Get the number of subjects from the user
  stdout.write('Enter the number of subjects: ');
  int numSubjects = int.parse(stdin.readLineSync()!);

  // Initialize variables
  int totalMarks = 0;
  int maxMarks = numSubjects * 100;

  // Get each subject's marks from the user and calculate the total marks
  for (int i = 1; i <= numSubjects; i++) {
    stdout.write('Enter marks for subject $i: ');
    int marks = int.parse(stdin.readLineSync()!);
    totalMarks += marks;
  }

  // Calculate the average and percentage
  double average = totalMarks / numSubjects;
  double percentage = (totalMarks / maxMarks) * 100;

  // Display the average and percentage
  print('Average marks: $average');
  print('Percentage: $percentage%');
}
