// Object-Oriented Programs
// Polymorphism

// Example 1: Polymorphism By Method Overriding In Dart
// In this example below, there is a class named Animal with a method
// named eat(). The eat() method is overridden in the child class named Dog.
class Animal {
  void eat() {
    print('eat');
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print('child eat');
  }
}

// Example 2: Polymorphism By Method Overriding In Dart
// In this example below, there is a class named Vehicle with a method
// named run(). The run() method is overridden in the child class named Bus.
class Vehicle {
  void run() {
    print('run');
  }
}

class Bus extends Vehicle {
  @override
  void run() {
    print('child run');
  }
}

// Example 3: Polymorphism By Method Overriding In Dart
// In this example below, there is a class named Car with a method
// named power(). The power() method is overridden in two child classes
// named Honda and Tesla.
class Car {
  void power() {
    print('power');
  }
}

class Honda extends Car {
  @override
  void power() {
    print('Honder power');
  }
}

class Tesla extends Car {
  @override
  void power() {
    print('Tesla power');
  }
}

// Example 4: Polymorphism By Method Overriding In Dart
// In this example below, there is a class named Employee with a method
// named salary(). The salary() method is overridden in two child classes
// named Manager and Developer
class Employee {
  void salary() {
    print('Employees salary');
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print('Manager salary');
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print('Developer salary');
  }
}

//
void emptyLine() {
  print('==============');
}

void main() {
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.eat();

  emptyLine();
  Vehicle vehicle = Vehicle();
  vehicle.run();
  Bus bus = Bus();
  bus.run();

  emptyLine();
  Honda honda = Honda();
  Tesla tesla = Tesla();
  honda.power();
  tesla.power();

  emptyLine();
  Manager manager = Manager();
  Developer developer = Developer();
  manager.salary();
  developer.salary();
}
