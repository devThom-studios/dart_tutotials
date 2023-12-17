// Intro and Basic 

void main() {
  // Question1 and 6
  String firstName = "Thomas";
  String middleName = "Amo";
  String lastName = "Kyeimiah";
  print('1) my name is $firstName $middleName $lastName');

  // Question2
  String name1 = 'Hello I am "John Doe"';
  String name2 = '''Hello I'am "John Doe" ''';
  print('2a) $name1');
  print('2b) $name2');

  // Question3
  const int x = 7;
  print('3) the constant value is $x');

  // Question4
  double r = 3.5;
  int t = 10;
  double p = 50000;
  const int percent = 100;
  double? simpleInterest;
  simpleInterest = (p * t * r) / percent;
  print('The simple interest is $simpleInterest');

  // Question5
  String inputNum = "5";
  int squareNum = int.parse(inputNum) * int.parse(inputNum);
  print('the square of $inputNum is $squareNum');

  // Question7
  int numOne = 5;
  int numTwo = 3;
  int quo = numOne ~/ numTwo;
  int rem = numOne % numTwo;
  print('The quotient of $numOne and $numTwo is $quo');
  print('The remainder of $numOne and $numTwo is $rem');

  // Question8
  dynamic swap1 = 5;
  dynamic swap2 = 10;
  swap1 = 10;
  swap2 = 5;

  print('$swap1 $swap2');

  int a = 5;
  int b = 10;

  print('Before swapping: a = $a, b = $b');

  int c = a;
  a = b;
  b = c;

  print('After swapping: a = $a, b = $b');

  // Question9
  String whiteSpace = '   Thomas is going to school';
  print(whiteSpace.trim());

  // Question10
  String str = '25';
  int conVert = int.parse(str);
  print(conVert);
  print(conVert.runtimeType);

  // Question11
  int numOfPeople = 3;
  double totalBill = 1700;
  int splitBill = (totalBill / numOfPeople).round();
  print('Each person will pay \$$splitBill');

  // Question11
  double speed = 40; // 40km/h
  int distance = 25; // 25km
  double time = distance / speed;
  double timeToMinute = time * 60;
  print('The time taken to reach office in minutes is $timeToMinute');
}
