// Object-Oriented Programs

// Getter and Setter

// -------------------------------------------------------------------------
// There is a class named Student with three private properties _firstName,
// _lastName and _age. There are two getters fullName and age to get the
// value of the properties. There are also three setters firstName, lastName
// and age to update the value of the properties. If age is less than 0, it
// will throw an error.
// --------------------------------------------------------------------------
class Student {
  String? _firstName;
  String? _lastName;
  int? _age;

  String get fullName => '$_firstName $_lastName';
  int get age => _age!;

  set firstName(String firstName) => _firstName = firstName;
  set lastName(String lastName) => _lastName = lastName;
  set age(int age) {
    if (age < 0) {
      throw Exception('Number shouldnt be less than zero');
    } else {
      _age = age;
    }
  }
}

// -------------------------------------------------------------------------
// There is a class named BankAccount with one private property _balance. 
// There is one getter balance to read the value of the property.
// There are methods deposit and withdraw to update the value of the _balance.
// -------------------------------------------------------------------------
class BankAccount {
  int? _balance = 0;

  int get balance => this._balance!;

  int deposit(int amount) {
    this._balance = this._balance! + amount;
    return this._balance!;
  }

  int withdraw(int amount) {
    if (amount > this._balance!) {
      throw Exception('Insufficient balance, Try again!!!');
    } else {
      this._balance = this._balance! - amount;
      return this._balance!;
    }
  }
}

void main() {
  Student student = Student();
  student.firstName = 'Thomas';
  student.lastName = 'Kyeimiah';
  student.age = 21;
  print('Student: ${student.fullName}');
  print('Age: ${student.age}');
  print('');

  BankAccount bankAccount = BankAccount();
  bankAccount.deposit(30000);
  bankAccount.deposit(200);
  bankAccount.withdraw(4900);
  print(bankAccount.balance);
}
