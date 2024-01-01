// Object-Oriented Programs
// Inheritance of Constructor

// Example 1: Inheritance Of Constructor In Dart
// In this example below, there is class named Laptop with a constructor.
// There is another class named MacBook which extends the Laptop class.
// The MacBook class has its own constructor.
class Laptop {
  Laptop() {
    print('Laptop Constructor');
  }
}

class MacBook extends Laptop {
  MacBook() {
    print('MacBook Constructor');
  }
}

// Example 2: Inheritance Of Constructor With Parameters In Dart
// In this example below, there is class named Laptop with a constructor with
// parameters. There is another class named MacBook which extends the Laptop
// class. The MacBook class has its own constructor with parameters.
class Laptop2 {
  Laptop2(String name, int age) {
    print('$name, $age');
  }
}

class MacBook2 extends Laptop2 {
  MacBook2(String name, int age) : super(name, age) {
    print('MacBook Constructor');
  }
}

// Example 3: Inheritance Of Constructor
// In this example below, there is class named Person with properties name
// and age. There is another class named Student which extends the Person class.
// The Student class has additional property rollNumber. Lets see how to create
// a constructor for the Student class.
class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Student extends Person {
  int? rollNumber;
  Student(this.rollNumber, int age, String name) : super(name, age);
}

void emptyLine() {
  print('');
}

// Example 4: Inheritance Of Constructor With Named Parameters In Dart
// In this example below, there is class named Laptop with a constructor with
// named parameters. There is another class named MacBook which extends the
// Laptop class. The MacBook class has its own constructor with named
// parameters.
class Laptop3 {
  // Constructor
  Laptop3({String? name, String? color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook3 extends Laptop3 {
  // Constructor
  MacBook3({String? name, String? color}) : super(name: name, color: color);
}

// Example 5: Calling Named Constructor Of Parent Class In Dart
// In this example below, there is class named Laptop with one default
// constructor and one named constructor. There is another class named MacBook
// which extends the Laptop class. The MacBook class has its own constructor
// with named parameters. You can call the named constructor of the parent
// class using the super keyword.
class Laptop4 {
  Laptop4() {
    print('Default Constructor');
  }

  Laptop4.namedConstructor(String name, String color) {
    print("Laptop named constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook4 extends Laptop4 {
  MacBook4.namedConstructor(String name, String color) : super.namedConstructor(name, color) {
    print('thannks');
  }
}

void main() {
  MacBook macBook = MacBook();
  macBook;
  emptyLine();
  MacBook2 macBook2 = MacBook2('Thomas', 24);
  macBook2;
  emptyLine();
  Student student = Student(24, 21, 'yaw');
  print("Student name: ${student.name}");
  print("Student age: ${student.age}");
  print("Student roll number: ${student.rollNumber}");
  emptyLine();
  MacBook3 macBook3 = MacBook3(name: 'dell', color: 'black');
  macBook3;
  emptyLine();
  MacBook4 macBook4 = MacBook4.namedConstructor('thom', 'color');
  macBook4;
}
