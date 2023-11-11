
//task 1

void showCurrentDateTime() {
  DateTime now = DateTime.now();
  String formattedDateTime = "${_twoDigits(now.year)}-${_twoDigits(now.month)}-${_twoDigits(now.day)} ${_twoDigits(now.hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)}";
  print("Current date and time: $formattedDateTime");
}

String _twoDigits(int n) => n >= 10 ? "$n" : "0$n";

void main() {
  showCurrentDateTime();
}

//task 2

void main() {
  double radius = 12;
  double area = 3.14159 * radius * radius;
  print("The area is: $area");
}

//task 3

void main() {
  double base = 1.0;
  double height = 1.0;
  double area = 0.5 * base * height;
  print("The area of height $height and base $base will be");
  print(area);
}

//task 4

import 'dart:io';

void main() {
  print("Enter a base");
  double base = double.parse(stdin.readLineSync()!);

  print("Enter a height");
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;

  print("The area of height $height and base $base will be");
  print(area);
}


// task 5

import 'dart:io';

void main() {
  print("How many Fibonacci numbers do you want?");
  int n = int.parse(stdin.readLineSync()!);
  if (n <= 0) {
    print("Invalid input. Please enter a positive integer.");
  } else {
    print(generateFibonacci(n));
  }
}

List<int> generateFibonacci(int n) {
  List<int> fibonacci = [1, 1];
  for (int i = 2; i < n * 2; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }
  return fibonacci;
}
