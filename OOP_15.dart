// Object-Oriented Programs
// Static
import 'dart:math';

// Example 1: Static Variable In Dart
// In this example below, there is a class named Employee. The class has a
// static variable count to count the number of employees.
class Employee {
  static int count = 0;
  Employee() {
    count++;
  }
  void display() {
    print('Employee $count');
  }
}

// Example 2: Static Variable In Dart
// In this example below, there is a class named Student. The class has a
// static variable schoolName to store the name of the school. If every student
// belongs to the same school, then it is better to use a static variable.
class Student {
  static String schoolName = 'Harvard University';
  int? id;
  String? name;

  Student(this.id, this.name);

  void display() {
    print('$id, $name, $schoolName');
  }
}

//Example 3: Static Method In Dart
// In this example, we will create a static method calculateInterest() which
// calculates the simple interest.
//You can call SimpleInterest.calculateInterest() anytime without creating an
// instance of the class.
class SimpleInterest {
  static double calculateInterest(
      {double? rate, double? time, double? principal}) {
    return (rate! * time! * principal!) / 100;
  }

// Example 4: Static Method In Dart
// In this example below, there is static method generateRandomPassword() which
// generates a random password.
// You can call PasswordGenerator.generateRandomPassword() anytime without
// creating an instance of the class.
}

class myRandom {
  static String generateRandomPassword() {
    List<String> allalphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> specialCharacters = ["@", "#", "%", "&", "*"];
    List<String> password = [];
    for (int i = 0; i < 5; i++) {
      password.add(allalphabets[Random().nextInt(allalphabets.length)]);
      //password.add(allalphabets.getRange(0, 3).toString());
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password
          .add(specialCharacters[Random().nextInt(specialCharacters.length)]);
    }
    return password.join();
  }
}

void main() {
  print(myRandom.generateRandomPassword());

  Employee employee1 = Employee();
  employee1.display();

  Employee employee2 = Employee();
  employee2.display();

  Student student1 = new Student(1, "John");
  student1.display();
  Student student2 = new Student(2, "Smith");
  student2.display();

  print(
      SimpleInterest.calculateInterest(rate: 2.5, time: 10, principal: 10000));
}
