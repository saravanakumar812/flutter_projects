import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print('The number is even.');
  } else {
    print('The number is odd.');
  }
}
