//Object-Oriented Programs

// Default Constructor
class Laptop {
  String? brand;
  int? price;

  Laptop() {
    print('This is a default constructor');
  }
}

class Student {
  String? name;
  int? age;
  String? schoolname;
  String? grade;

  Student() {
    schoolname = 'Havard';
  }
}

class Person {
  String? name;
  String? planet;

  Person() {
    planet = 'Earth';
  }
}

void main() {
  Laptop laptop = Laptop();
  laptop.brand = 'Mac';
  laptop.price = 024558859393;
  print('brand: ${laptop.brand}');
  print('price: ${laptop.price}');
  print('===============');

  Student student = Student();
  student.name = 'Thomas';
  student.age = 25;
  student.grade = 'A+';
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("School Name: ${student.schoolname}");
  print("Grade: ${student.grade}");

  print('===============');
  Person person = Person();
  person.name = 'Thomas Amo Kyeimiah';
  print('name: ${person.name}');
  print('planet: ${person.planet}');
}
