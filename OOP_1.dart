//Object-Oriented Programs

//Object and Class
class MyName {
  // properties or attributes
  String? firstName;
  String? midName;
  String? lastName;

  // method or function
  void display() {
    print('my name is $firstName $midName $lastName');
  }
}

class Book {
  // properties or attributes
  String? name;
  String? author;
  String? prize;

  void changeName(String nameChnge) {
    name = nameChnge;
  }

  // method or function
  void display() {
    print('$name \n$author \n$prize');
  }
}

class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

class Camera {
  String? name;
  String? color;
  String? megapixel;

  void display() {
    print("name: $name");
    print("color: $color");
    print("mega pixel: $megapixel");
  }
}

class Rectangle {
  int? length;
  int? breadth;

  int area() {
    return length! * breadth!;
  }
}

class SimpleInterest {
  double? principal;
  double? rate;
  double? time;

  double interest() {
    return (principal! * rate! * time!) / 100;
  }
}

class Home {
  String? name;
  String? address;
  int? numberOfRooms;

  void display() {
    print('$address\n$name\n$numberOfRooms');
  }
}

//main program for instatiation
void main() {
  Bicycle bicycle = Bicycle();
  bicycle.color = 'Red';
  bicycle.size = 12;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(20);
  bicycle.display();
  print('================');

  MyName myname = MyName();
  myname.firstName = 'Thomas';
  myname.midName = 'Amo';
  myname.lastName = 'Kyeimiah';
  myname.display();
  print('================');

  Book book = Book();
  book.author = 'peggy oppong';
  book.name = 'thomas amo kyeimiah';
  book.prize = 'havard university';
  book.changeName('Oheneba');
  book.display();
  print('================');

  Camera camera = Camera();
  camera.color = 'yellow';
  camera.name = 'sony';
  camera.megapixel = '300px';
  camera.display();
  print('================');

  Rectangle rectangle = Rectangle();
  rectangle.length = 20;
  rectangle.breadth = 30;
  print(rectangle.area());
  print('================');

  SimpleInterest simpleinterest = SimpleInterest();
  simpleinterest.principal = 750.25;
  simpleinterest.rate = 3.4;
  simpleinterest.time = 10;
  print(simpleinterest.interest());
  print('================');

  Home home = Home();
  home.address = '1240 rue cardinal';
  home.name = 'cote vertu';
  home.numberOfRooms = 10;
  home.display();
  print('================');

  print('================');
}
