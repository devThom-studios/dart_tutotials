// Functions
import 'dart:math';

// writing function outside main function.
void myfirstFunction() {
  print('my first function');
}

// sum of two numbers function
void sum1(int x, int y) {
  int z = x + y;
  print('sum: $z');
}

// simple interest
void simpleInterest(double r, int t, double p, [int percent = 100]) {
  double interest = (p * r * t) / percent;
  print('interest: $interest');
}

// Create a function that finds a cube of numbers.
void cubic(int x) {
  int cube = x * x * x;
  print('cubic of $x: $cube');
}

//
int substract(int x, int y) {
  int sub = x - y;
  return sub;
}

//Named Parameter In Dart
void named({String? name, String? gender}) {
  print("Hi, I'm $name and I'm a $gender.");
}

// using required
void printInfo({required String name, required String gender}) {
  print("Hello $name your gender is $gender.");
}

// optional parameter
void printIn(String name, String gender, [String? title]) {
  print("Hello $title $name your gender is $gender.");
}

// arrow
void simplecalc(int x, int y, [int z = 2]) =>
    //print ('====');
    print(x * y * z);

// main function.
void main() {
  myfirstFunction();
  sum1(3, 4);
  simpleInterest(1.8, 2, 750.50);
  cubic(10);
  int sub1 = substract(20, 12);
  print('substract: $sub1');
  named(gender: 'male', name: 'Thomas');
  named(name: 'Hannah', gender: 'female');
  printInfo(gender: 'male', name: 'Thomas');
  printInfo(name: 'Hannah', gender: 'female');
  printIn("John", "Male");
  printIn("John", "Male", "Mr.");

  // anonymous function
  var quadru = (int number) {
    return number * number * number * number;
  };
  print(quadru(4));

  List<String> fruits = ['pineapple', 'apple', 'pawpaw', 'orange'];
  fruits.forEach((i) => print(i));

  simplecalc(3, 5);

  print('========');
  Random random = Random();
  int randomNumber = random.nextInt(10); // from 0 to 9 included
  print("Generated Random Number Between 0 to 9: $randomNumber");

  int randomNumber2 = random.nextInt(10) + 1; // from 1 to 10 included
  print("Generated Random Number Between 1 to 10: $randomNumber2");

  /////
  Random newRand = Random();
  int randNum = newRand.nextInt(10) + 11;
  print("Generated Random Number Between 10 and 20: $randNum");

  // min + Random().nextInt((max + 1) - min);
  int min1 = 10;
  int max1 = 20;
  int randNum2 = min1 + newRand.nextInt(max1 + 1) - min1;
  print("Generated Random number between $min1 and $max1 is: $randNum2");

  // This example will generate a list of 10 random numbers between 1 to 100
  List<int> randomList = List.generate(10, (_) => Random().nextInt(100) + 1);
  print(randomList);

  // This example will generate a list of 5 random numbers between 50 to 100.
  List<int> randList = List.generate(5, (_) => newRand.nextInt(50) + 51);
  print(randList);

  //maths functions
  print(pow(10, 2));
  print(min(10, 17));
  print(max(10, 17));
  print(sqrt(81));
}

//void is used for non return

