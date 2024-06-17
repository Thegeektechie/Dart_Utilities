import 'dart:io';

void main() {
  // Task 1: Sum of two numbers
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Sum of $num1 and $num2 is ${sum(num1, num2)}\n');

  // Task 2: For loop to print numbers from 1 to 10
  print('Numbers from 1 to 10:');
  printNumbersFrom1To10();

  // Task 3: Switch statement to check different string values
  stdout.write('\nEnter a value (between one, two and three): ');
  String value = stdin.readLineSync()!;
  checkStringValue(value);

  // Task 4: While loop to print numbers from 20 to 10
  print('\nNumbers from 20 to 10:');
  printNumbersFrom20To10();

  // Task 5: If-else statement to check if a number is even or odd
  stdout.write('\nEnter a number to check if it is even or odd: ');
  int numberToCheck = int.parse(stdin.readLineSync()!);
  checkEvenOrOdd(numberToCheck);

  // Task 6: Find the largest number in a list
  stdout.write('\nEnter a list of numbers separated by space: ');
  List<int> numbers = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();
  print('The largest number in the list is ${findLargestNumber(numbers)}');

  // Task 7: Demonstrate try-catch block
  demonstrateTryCatch();
}

// Function to sum two numbers
int sum(int a, int b) {
  return a + b;
}

// Function to print numbers from 1 to 10
void printNumbersFrom1To10() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Function to check string value using switch statement
void checkStringValue(String value) {
  switch (value) {
    case 'one'|| '1':
      print('The value is one');
      break;
    case 'two' || '2':
      print('The value is two');
      break;
    case 'three' || '3':
      print('The value is three');
      break;
    default:
      print('Unknown value');
  }
}

// Function to print numbers from 20 to 10 using a while loop
void printNumbersFrom20To10() {
  int number = 20;
  while (number >= 10) {
    print(number);
    number--;
  }
}

// Function to check if a number is even or odd using if-else statement
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Function to find the largest number in a list
int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

// Function to demonstrate try-catch block
void demonstrateTryCatch() {
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print(result);
  } catch (e) {
    print('An error occurred: $e');
  }
}
