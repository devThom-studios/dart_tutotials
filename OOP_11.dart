// Object-Oriented Programs
// Inheritance

// Example 1: Inheritance In Dart
// In this example, we will create a class Person and then create a
// class Student that inherits the properties and methods of the Person class.
class Person {
  String? name;
  String? age;
}

class Student extends Person {
  String? classsize;

  void display() {
    print('$classsize, $age, $name');
  }
}

// Example 2: Inheritance In Dart
// In this example, here is parent class Car and child class Toyota.
// The Toyota class inherits the properties and methods of the Car clas
class Car {
  String? color;
  int? year;

  void start() {
    print("Car started");
  }
}

class Toyota extends Car {
  String? model;
  int? price;

  void showDetails() {
    print('$model, $price, $color, $year');
  }
}

// Example 3: Single Inheritance In Dart
// In this example below, there is super class named Car with two properties
// name and prize. There is sub class named Tesla which inherits the properties
// of the super class. The sub class has a method display to display the values
// of the properties.
class Car2 {
  String? name;
  int? price;
}

class Tesla extends Car2 {
  void display() {
    print('$name, $price');
  }
}

// Example 4: Multilevel Inheritance In Dart
// In this example below, there is super class named Car with two properties
// name and prize. There is sub class named Tesla which inherits the properties
// of the super class. The sub class has a method display to display the values
// of the properties. There is another sub class named Model3 which inherits the
// properties of the sub class Tesla. The sub class has a property color and a
// method display to display the values of the properties.
class Car3 {
  String? name;
  int? price;
}

class Tesla2 extends Car3 {
  void display() {
    print('$name, $price');
  }
}

class Model3 extends Tesla2 {
  String? color;
  void display() {
    print('$color');
    super.display();
  }
}

// Example 5: Multilevel Inheritance In Dart
// In this example below, there is class named Person with two properties name
// and age. There is sub class named Doctor with properties listofdegrees and
// hospitalname. There is another subclass named Specialist with property
// specialization. The sub class has a method display to display the values of
// the properties.
class Person2 {
  String? name;
  String? age;
}

class Doctor extends Person2 {
  List<String>? listofdegrees;
  String? hospitalname;
  // Method to display the values of the properties
  void display() {
    print("Name: ${name}");
    print("Age: ${age}");
    print("List of Degrees: ${listofdegrees}");
    print("Hospital Name: ${hospitalname}");
  }
}

class Specialist extends Doctor {
  String? specialization;
  void display() {
    super.display();
    print('Specialization: $specialization');
  }
}

// Example 6: Hierarchical Inheritance In Dart
// In this example below, there is class named Shape with two properties
//diameter1 and diameter2. There is sub class named Rectangle with method
// area to calculate the area of the rectangle. There is another subclass
// named Triangle with method area to calculate the area of the triangle.
class Shape {
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  void area() {
    double area = diameter1! * diameter2!;
    print('area of rectangle: $area');
  }
}

class Triangle extends Shape {
  void area() {
    double area = 1 / 2 * diameter1! * diameter2!;
    print('area of triangle: $area');
  }
}

void main() {
  Student student = Student();
  student.name = 'Thomas';
  student.age = '10';
  student.classsize = '45';
  student.display();
  print('');

  Toyota toyota = Toyota();
  toyota.color = 'Red';
  toyota.price = 2000;
  toyota.year = 2020;
  toyota.model = 'toyota123';
  toyota.start();
  toyota.showDetails();
  print('');

  Tesla tesla = Tesla();
  tesla.name = 'Yaw';
  tesla.price = 24;
  tesla.display();
  print('');

  Model3 model3 = Model3();
  model3.name = 'Esi';
  model3.price = 400;
  model3.color = 'red';
  model3.display();
  print('');

  Specialist specialist = Specialist();
  List<String> lists = ['MBBS', 'MD'];
  specialist.name = 'Tom';
  specialist.age = '23';
  specialist.hospitalname = 'ABC hospital';
  specialist.listofdegrees = lists;
  specialist.specialization = 'Cardiologist';
  specialist.display();
  print('');

  Rectangle rectangle = Rectangle();
  rectangle.diameter1 = 4;
  rectangle.diameter2 = 4;
  rectangle.area();
  print('===============');
  Triangle triangle = Triangle();
  triangle.diameter1 = 4;
  triangle.diameter2 = 4;
  triangle.area();
}
