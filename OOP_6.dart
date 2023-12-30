//Object-Oriented Programs

// Constant Constructor

// Example 1: Constant Constructor In Dart
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// Example 2: Constant Constructor In Dart
class Student {
  final String name;
  final int age;
  final int rollNumber;

  const Student(this.name, this.age, this.rollNumber);
}

// Example 3: Constant Constructor With Named Parameters In Dart
class Car {
  final String? name;
  final String? model;
  final int? price;

  const Car({this.name, this.model, this.price});
}

// Challenge
// Create a class Customer with three properties:
// name, age, and phone. The class should have one constant
// constructor. The constructor should initialize the values of
// the three properties. Create an object of the class Customer
// and print the values of the three properties.

class Customer {
  final String? name;
  final int? age;
  final int? phone;

  const Customer(this.name, this.age, this.phone);
}

void main() {
  Point person = const Point(10, 20);
  print("The p1 hash code is: ${person.hashCode}");
  print('=====================');

  Student student = Student('Thomas', 25, 2);
  print("${student.name}");
  print("${student.age}");
  print("${student.rollNumber}");
  print('=====================');

  Car car = Car(name: 'Kyeimiah', model: 'GV45', price: 250);
  print("${car.name}");
  print("${car.model}");
  print("${car.price}");
  print('=====================');

  Customer customer = Customer('Amo', 25, 4384651236);
  print("${customer.name}");
  print("${customer.age}");
  print("${customer.phone}");
}
