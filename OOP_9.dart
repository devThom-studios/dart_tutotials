// Object-Oriented Programs

// Encapsulation: Setter

// Example 1: Setter In Dart
class NoteBook {
  String? _name;
  int? _prize;

  set name(String name) => this._name = name;
  set prize(int prize) => this._prize = prize;

  void display() {
    print('${this._name}');
    print('${this._prize}');
  }
}

// Example 2: Setter In Dart With Data Validation
class NoteBook2 {
  String? _name;
  int? _prize;

  set name(String name) {
    if (name == '') {
      print('No word');
    } else {
      this._name = name;
    }
  }

  set prize(int prize) {
    if (prize == 0) {
      print('No number');
    } else {
      this._prize = prize;
    }
  }

  void display() {
    print('${this._name}');
    print('${this._prize}');
  }
}

// Example 3: Setter In Dart
class Student {
  String? _name;
  int? _classnumber;

  set name(String name) => _name = name;

  set classnumber(int classnumber) {
    if ((classnumber >= 1) && (classnumber <= 12)) {
      _classnumber = classnumber;
    } else {
      throw Exception('This only accepts values between 1 and 12');
    }
  }

  void display() {
    print('Name: ${_name}');
    print('Classnumber: ${_classnumber}');
  }
}

void main() {
  NoteBook noteBook = NoteBook();
  noteBook.name = 'Thomas';
  noteBook.prize = 1200;
  noteBook.display();

  print('');
  NoteBook2 noteBook2 = NoteBook2();
  noteBook2.name = '';
  noteBook2.prize = 1200;
  noteBook2.display();

  print('');
  Student student = Student();
  student.name = 'Thomas';
  student.classnumber = 13;
  student.display();
}
