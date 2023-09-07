import 'dart:io';

void main() {
  // Get the age and weight from the user
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your weight in kilograms: ');
  double weight = double.parse(stdin.readLineSync()!);

  // Check eligibility based on age and weight
  if (age >= 18 && weight >= 50) {
    print('You are eligible to donate blood.');
  } else {
    print('You are not eligible to donate blood.');
  }
}
