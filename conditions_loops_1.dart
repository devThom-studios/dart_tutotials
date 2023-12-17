// Conditions and loops

enum Food { rice, coffee, wrap, pizza }

void main() {
  // if condition
  int number = 10;
  if (number > 5) {
    print('$number is greater');
  }

  // if-else conditon
  int isEven = 33;
  if (isEven % 2 == 0) {
    print('$isEven is an even number');
  } else {
    print('$isEven is an odd number');
  }

  // if-else-if conditon
  int num1 = 34;
  int num2 = 44;
  int num3 = 45;

  if (num1 > num2 && num1 > num3) {
    print('$num1 is greater than $num2 and $num3');
  } else if (num2 > num3 && num2 > num1) {
    print('$num2 is greater than $num3 and $num1');
  } else if (num3 > num1 && num3 > num2) {
    print('$num3 is greater than $num1 and $num2');
  }

  // check errors
  //assert(number != 10, 'Number must be 10');

  // switch case work as if-else-if
  print('===================');
  int num4 = 100;
  switch (num4) {
    case 100:
      print('100 is equal to $num4');
      break;
    case 150:
      print('150 is equal to $num4');
      break;
    default:
      print('invalid');
  }

  const foodRice = Food.rice;
  switch (foodRice) {
    case Food.coffee:
      print('that is rice');
      break;
    case Food.pizza:
      print('that is pizza');
      break;
    case Food.rice:
      print('that is rice');
      break;
    default:
      print('Invalid food entry');
      break;
  }

  //tenary operator to make if-else simple and short
  //Create an int variable age and initialize it with your age.
  // Write ternary statement to print “Teenager” if age is between
  // 13 and 19 and “Not Teenager” if age is not between 13 and 19.

  int age = 25;
  var check = (age >= 13 && age <= 19) ? "Teenager" : "Not Teanager";
  print(check);

  // For Loop
  // For (initialization; condition; increment/drecrement){statements; }
  int total = 0;
  for (int i = 1; i <= 100; i++) {
    total = total + i;
  }
  print(total);

  // For Each Loop: useful for lit/collection
  print('===============');
  List<String> footballClub = ['chelsea', 'manchester', 'arsenal'];
  footballClub.forEach((i) => print(i));

  List<int> numbers = [1, 2, 3, 4, 5];
  total = 0;
  numbers.forEach((i) => total = total + i);
  print(total);
  print(total / numbers.length);

  // For in Loop: useful for lit/collection
  var newTotal = 0;
  for (int i in numbers) {
    newTotal += i;
  }
  print(newTotal);
  print(newTotal / numbers.length);

  // find index value of List asMap()
  numbers.asMap().forEach((i, v) => print('$i $v'));

  //while loop
  int i = 50;
  while (i <= 60) {
    if (i % 2 == 0) {
      print(i);
    }

    i++;
  }
  print('===============');

  // do while loop
  int j = 1;
  int total3 = 0;
  do {
    total3 += j;
    j++;
  } while (j <= 100);

  print(total3);

  // try and catch

  int a = 10;
  int b = 18;
  int res;

  try {
    res = b ~/ a;
    print(res);
  } catch (ex) {
    print(ex);
  } finally {
    print('Finally block always executed');
  }
}
