//Object-Oriented Programs

// Named Constructor

// Example 1: Named Constructor In Dart
import 'dart:convert';

class Student {
  String? name;
  int? age;

  Student() {
    print('This is a default contsructor');
  }

  Student.namedConstructor(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

// Example 2: Named Constructor In Dart
class Mobile {
  String? name;
  String? color;
  int? prize;

  Mobile(this.name, this.color, this.prize);

  Mobile.namedConstructor(String name, String color, [int prize = 0]) {
    this.name = name;
    this.color = color;
    this.prize = prize;
  }

  void display() {
    print('name: $name');
    print('color: $color');
    print('prize: $prize');
  }
}

// Example 3: Named Constructor In Dart
class Animal {
  String? name;
  int? age;

  Animal() {
    print('this is first constructor');
  }

  Animal.namedConstructor(this.name);
  Animal.namedConstructor1(this.age, this.name);
}

// Example 4: Real Life Example Of Named Constructor In Dart
// In this example below, there is a class Person with two
// properties name and age. The class has three constructors.
// The first is a parameterized constructor which takes two parameters name
// and age. The second and third constructors are named constructors.
// Second constructor fromJson is used to create an object of the class Person
// from a JSON. The third fromJsonString is used to create an object of the
// class Person from a JSON string. We also have an object of the class
// Person called person.

class Person {
  String? name;
  int? age;

  Person(String? name, int? age) {
    this.name = name;
    this.age = age;
  }

  Person.json(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }
  Person.jsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}

// Challenge
// Try to create a class Car with three properties name, color, and prize
// and one method display which prints out the values of the three properties.
// Create a constructor, which takes all 3 parameters.
// Create a named constructor which takes two parameters name and color.
// Create an object of the class from both the constructors
// and call the method display.
class Car {
  String? name;
  String? color;
  int? prize;

  Car(this.name, this.color, this.prize);
  Car.namedConstructor(this.name, this.color);

  void display() {
    print('name: ${this.name}');
    print('color: ${this.color}');
    print('prize: ${this.prize}');
  }
}

void main() {
  Student student = Student.namedConstructor('Thomas', 25);
  print('${student.name}\n${student.age}');
  print('====================');

  Mobile mobile = Mobile('Thomas', 'blue', 20);
  mobile.display();

  print('====================');
  Mobile mobile1 = Mobile.namedConstructor('Thomas', 'blue');
  mobile1.display();

  print('====================');
  //Animal animal = Animal();
  Animal animal0 = Animal.namedConstructor('Thomas');
  Animal animal1 = Animal.namedConstructor1(24, 'Kyeimiah');
  print('name: ${animal0.name}');
  print('name: ${animal1.name}, age: ${animal1.age}');

  print('====================');
  // Here person is object of class Person.
  String jsonString1 = '{"name": "Bishworaj", "age": 25}';
  String jsonString2 = '{"name": "John", "age": 30}';
  Map<String, dynamic> json = {"name": "Bish", "age": 40};

  Person p1 = Person.jsonString(jsonString1);
  print("Person 1 name: ${p1.name}");
  print("Person 1 age: ${p1.age}");

  Person p2 = Person.jsonString(jsonString2);
  print("Person 2 name: ${p2.name}");
  print("Person 2 age: ${p2.age}");

  Person p3 = Person.json(json);
  print("Person 3 name: ${p3.name}");
  print("Person 3 age: ${p3.age}");

  print('====================');
  Car car = Car('Thomas', 'Yellow', 25);
  car.display();
  Car car1 = Car.namedConstructor('Hannah', 'Red');
  car1.display();
}
