// Object-Oriented Programs

// Encapsulation

// Example 1: Encapsulation In Dart
// In this example, we will create a class named Employee.
// The class will have two private properties _id and _name.
// We will also create two public methods getId() and getName() to access
// the private properties. We will also create two public methods setId()
// and setName() to update the private properties.
class Employee {
  int? _id;
  String? _name;

  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  void setId(int _id) {
    this._id = _id;
  }

  void setName(String _name) {
    this._name = _name;
  }
}

// Example 2: Private Properties In Dart
class Employee2 {
  String? _name;

  String getName() {
    return _name!;
  }

  void setName(String name) {
    this._name = name;
  }
}

// Read-only Properties
class ReadOnly {
  final _property = 'property';

  void display() {
    print('this is read-only $_property');
  }
}

// getter and setter using get and set
class Vehicle {
  String? _model;
  int? _year;

  // Getter
  String get model => _model!;
  int get year => _year!;

  // Setter
  set model(String model) => _model = model;
  set year(int year) => _year = year;
}

// trial
class Foods {
  String? _banku;
  String? _rice;

  String get banku => _banku!;
  String get rice => _rice!;

  set banku(String banku) => _banku = banku;
  set rice(String rice) => _rice = rice;
}

void main() {
  Employee employee = Employee();
  employee.setId(244);
  employee.setName('Thomas');
  print('${employee.getId()}');
  print('${employee.getName()}');
  print('================');

  Employee2 employee2 = Employee2();
  employee2.setName('Yaw');
  print(employee2.getName());
  print('================');

  ReadOnly readOnly = ReadOnly();
  readOnly.display();
  print('================');

  Vehicle vehicle = Vehicle();
  vehicle.model = 'Toyota';
  vehicle.year = 2019;
  print('${vehicle.model}');
  print('${vehicle.year}');
  print('================');

  var foods = Foods();
  foods.rice = 'US\$ 250';
  foods.banku = 'US\$ 300';
  print('Price of rice: ${foods.rice}');
  print('Price of banku: ${foods.banku}');
  print('================');
}
