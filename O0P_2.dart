//Object-Oriented Programs

//Constructor
// Example 1: How To Declare Constructor In Dart
class Student {
  String? name;
  int? age;
  int? rollNumber;

  Student(String name, int age, int rollNumber) {
    print('Constructor called');
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  void display() {
    print('name: ${name}');
    print('age: ${age}');
    print('rollNumber: ${rollNumber}');
  }
}

// Example 2: Constructor In Dart
class Teacher {
  String? name;
  int? age;
  String? subject;
  double? salary;

  Teacher(String name, int age, String subject, double salary) {
    this.name = name;
    this.age = age;
    this.subject = subject;
    this.salary = salary;
  }

  void display() {
    print('name: ${this.name}');
    print('age: ${this.age}');
    print('subject: ${this.subject}');
    print('salary: ${this.salary}');
  }
}

// Example 3: Constructor In Dart
class Car {
  String? name;
  String? prize;

  Car(String name, String prize) {
    this.name = name;
    this.prize = prize;
  }

  void display() {
    print('name: ${this.name}');
    print('prize: ${this.prize}');
  }
}

// Example 4: Constructor In Dart
class Staff {
  String? name;
  int? phone1;
  int? phone2;
  String? subject;

  Staff(String name, int phone1, String subject) {
    this.name = name;
    this.phone1 = phone1;
    this.subject = subject;
  }

  void display() {
    print('name: ${this.name}');
    print('phone1: ${this.phone1}');
    print('phone2: ${this.phone2}');
    print('subject: ${this.subject}');
  }
}

// Example 5: Write Constructor Single Line
class Person {
  String? name;
  int? age;
  int? rollNumber;

  Person(this.name, this.age, this.rollNumber);

  void display() {
    print('${this.name}');
    print('${this.age}');
    print('${this.rollNumber}');
  }
}

// Example 6: Constructor With Optional Parameters
class Employee {
  String? name;
  int? age;
  String? subject;
  int? salary;

  Employee(this.name, this.age, [this.subject = 'N/A', this.salary = 0]);

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

// Example 7: Constructor With Named Parameters
class Chair {
  String? name;
  String? color;

  Chair({this.color, this.name});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

// Example 8: Constructor With Default Values
class Table {
  String? name;
  String? color;

  Table({this.name = 'VIP', this.color = 'Blue'});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

// Challenge
// Create a class Patient with three properties name, age, and disease.
// The class has one constructor. The constructor is used to initialize
// the values of the three properties.
// Also, create an object of the class Patient called patient.
// Print the values of the three properties using the object.

class Patient {
  String? name;
  int? age;
  String? disease;

  Patient(String name, int age, [String disease = 'Malaria']) {
    this.name = name;
    this.age = age;
    this.disease = disease;
  }
}

// main function
void main() {
  Student student = Student('Thomas', 25, 10);
  student.display();
  print('==================');

  Teacher teacher1 = Teacher('Thomas', 20, 'ATOC 540', 3003.5);
  teacher1.display();
  print('==================');

  Teacher teacher2 = Teacher('Kyeimiah', 40, 'ATOC 512', 515.5);
  teacher2.display();
  print('==================');

  Car car = Car('Amo', 'Havard-Award');
  car.display();
  print('==================');

  Staff staff = Staff('TomTom', 023448858858, 'Sea Ice');
  staff.display();
  print('==================');

  Person person = Person('Yaw', 24, 6);
  person.display();
  print('==================');

  Employee employee = Employee('Kyei', 24);
  employee.display();
  print('==================');

  Chair chair = Chair(color: 'RED', name: 'WOFA');
  chair.display();
  print('==================');

  Table table = Table();
  table.display();
  print('==================');

  Patient patient = Patient('Achaab', 24);
  print(
      'The patient is ${patient.name}.\nShe is ${patient.age} old.\nshe has ${patient.disease}');
  print('==================');
  print('THE END!');
}
