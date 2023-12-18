// Function - practicals
import 'dart:math';

//main function
void main() {
  myName();
  evenNumber(6);
  print('====');
  print(randNum);
  print(areaCircle(20));
  powerNumber(5, 3);
  pythagorean(3, 4);
  reverseStr('Thomas');
}

//1. Write a program in Dart to print your own name using function.
void myName() {
  print('my name is Thomas Amo Kyeimiah');
}

//2. Write a program in Dart to print even numbers between intervals
// using function
void evenNumber(int number) {
  for (int i = 0; i <= number; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

//3. Write a program in Dart that generates random password.
Random rand = Random();
int randNum = rand.nextInt(10) + 1;

//4. Write a program in Dart that find the area of a circle using function.
double areaCircle(double rad, [double pi = 3.142]) {
  double area = rad * pow(pi, 2);
  return area;
}

//5. Write a program in a dart that implements the Pythagorean theorem
//using function.
void pythagorean(double a, double b) {
  double c = sqrt(pow(a, 2) + pow(b, 2));
  print(c);
}

//6. Write a program in Dart to reverse a String using function.
void reverseStr(String str){
  print(str.split('').reversed.join());
}

//7. Write a program in Dart to calculate power of a certain number.
// For e.g 5^3=125
void powerNumber(int number, int power) {
  var result = pow(number, power);
  print(result);
}
