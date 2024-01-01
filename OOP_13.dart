// Object-Oriented Programs
// Super
// Example 1: Super In Dart
// In this example below, the show() method of the MacBook class calls the
// show() method of the parent class using the super keyword
class Laptop {
  void show() {
    print('Laptop show method');
  }
}

class MacBook extends Laptop {
  void show() {
    super.show();
  }
}

// Example 2: Accessing Super Properties In Dart
// In this example below, the display() method of the Tesla class calls
// the noOfSeats property of the parent class using the super keyword.
class Car {
  int noOfSeats = 6;
}

class Tesla extends Car {
  void display() {
    int noOfSeats = 4;
    print(noOfSeats);
    print(super.noOfSeats);
  }
}

// Example 3: Super With Constructor In Dart
// In this example below, the Manager class constructor calls the Employee
// class constructor using the super keyword.
class Employee {
  Employee() {
    print('Employee constructor');
  }
}

class Manager extends Employee {
  Manager() : super() {
    print('Manager construct');
  }
}

// Example 4: Super With Named Constructor In Dart
// In this example below, the Manager class named constructor calls the
// Employee class named constructor using the super keyword.
class AnotherEmployee {
  AnotherEmployee() {
    print('nothing....');
  }

  AnotherEmployee.named() {
    print('something something');
  }
}

class AnotherManager extends AnotherEmployee {
  AnotherManager.named() : super.named();
}

// Example 5: Super With Multilevel Inheritance In Dart
// In this example below, the MacBookPro class method display calls the display
// method of the parent class MacBook using the super keyword. The MacBook
// class method display calls the display method of the parent class Laptop
// using the super keyword.
class Laptop1 {
  void displayLaptop() {
    print('Laptop display');
  }
}

class MacBook1 extends Laptop1 {
  void displayMacBook() {
    super.displayLaptop();
    print('MacBook display');
  }
}

class MacBookPro1 extends MacBook1 {
  void displayMacBookPro() {
    super.displayMacBook();
    print('MacBookPro display');
  }
}

void main() {
  var macBook = MacBook();
  macBook.show();
  print('');

  var tesla = Tesla();
  //tesla.noOfSeats = 4;
  tesla.display();
  print('');

  Manager manager = Manager();
  manager;
  print('');

  AnotherManager anotherManager = AnotherManager.named();
  anotherManager;
  print('');

  var macBookPro1 = MacBookPro1();
  macBookPro1.displayMacBookPro();
  print('');
  print('');
  print('');
}
