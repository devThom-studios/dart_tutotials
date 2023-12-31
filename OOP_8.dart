// Object-Oriented Programs

// Encapsulation: Getter

// Example 1: Getter In Dart
class Person {
  String? firstName;
  String? lastName;

  Person(this.firstName, this.lastName);

  String get fullName => "$firstName $lastName";
}

// Example 2: Getter In Dart
class NoteBook {
  String? _name;
  int? _prize;

  NoteBook(this._name, this._prize);

  String get name => _name!;
  int get prize => _prize!;
}

// Example 3: Getter In Dart With Data Validation
class NoteBook2 {
  String? _name;
  int? _prize;

  NoteBook2(this._name, this._prize);
  String get name {
    if (_name == '') {
      return 'No name';
    } else {
      return _name!;
    }
  }

  int get prize {
    if (_prize == '') {
      return 0;
    } else {
      return _prize!;
    }
  }
}

// Example 4: Getter In Dart
class Doctor {
  String? _name;
  int? _age;
  String? _gender;

  // Constructor
  Doctor(this._name, this._age, this._gender);

  String get name => this._name!;
  int get age => this._age!;
  String get gender => this._gender!;

  Map<String, dynamic> get map {
    return {"name": _name, "age": _age, "gender": _gender};
  }
}

void main() {
  Person person = Person('Thomas', 'Kyeimiah');
  print(person.fullName);
  print('');

  NoteBook noteBook = NoteBook('Kofi', 12344);
  print(noteBook.name);
  print(noteBook.prize);
  print('');

  NoteBook2 noteBook2 = new NoteBook2('', 23);
  print(noteBook2.name);
  print(noteBook2.prize);
  print('');

  Doctor doctor = Doctor('Thomas', 25, 'M');
  print(doctor.name);
  print(doctor.age);
  print(doctor.gender);
  print(doctor.map);
  print('');
}
