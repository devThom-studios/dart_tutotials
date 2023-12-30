//Object-Oriented Programs

// Parameterized Constructor

// Example 1: Parameterized Constructor In Dart
class Student {
  String? name;
  int? age;

  Student(this.name, this.age);
}

// Example 2: Parameterized Constructor With Named Parameters In Dart
class Student1 {
  String? name;
  int? age;

  Student1({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }
}

// Example 3: Parameterized Constructor With Default Values In Dart
class Student2 {
  String? name;
  int? age;

  Student2({this.name = 'Thomas Kyeimiah', this.age = 24});
}

void main() {
  Student student = Student('Thomas', 24);
  print('name: ${student.name}');
  print('age: ${student.age}');
  print('==============');
  Student1 student1 = Student1(name: 'Thomas Amo', age: 24);
  print('name: ${student1.name}');
  print('age: ${student1.age}');
  print('==============');
  Student2 student2 = Student2();
  print('name: ${student2.name}');
  print('age: ${student2.age}');
  print('==============');
}
