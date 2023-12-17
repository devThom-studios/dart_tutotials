void main() {
  //Question1
  //Write a dart program to check if the number is even
  var number = 24;
  if (number % 2 == 0) {
    print('$number is an even number');
  }

  //Question2
  //Write a dart program to check whether a character is a vowel
  String char = 'a';
  if (char == 'b') {
    print('it is a consonant');
  } else if (char == 'a') {
    print('it is a vowel');
  }

  //Question3
  //Write a dart program to check whether a number is pos and neg
  var number1 = -10;
  var checkNumber = (number1 > 0) ? 'Positve' : 'Negative';
  print(checkNumber);

  //Question4
  //Write a dart program to print your name 5 times.
  for (int i = 1; i <= 5; i++) {
    print('Thomas');
  }

  //Question5
  //Write a dart program to calculate the sum of natural numbers
  var total = 0;
  for (int j = 1; j <= 100; j++) {
    total += j;
  }
  print(total);

  //Question6 and 7
  //Write a dart program to generate multiplication tables of 5 and 9.
  print('====================');
  const mul5 = 5;
  for (int k = 1; k <= 12; k++) {
    var res = k * 5;
    print('$mul5 * $k = $res');
  }

  print('====================');
  var k = 1;
  var mul9 = 9;
  do {
    var res2 = k * 9;
    print('$mul9 * $k = $res2');
    k++;
  } while (k <= 12);

  //Question8
  // Write a dart program to create a simple calculator that performs
  // addition, subtraction, multiplication, and division.
  var num1 = 20;
  var num2 = 40;
  String operator = '/';
  if (operator == '+') {
    print(num1 + num2);
  } else if (operator == '-') {
    print(num1 - num2);
  } else if (operator == '*') {
    print(num1 * num2);
  } else if (operator == '/') {
    print(num1 / num2);
  }

  //Question8
  // Write a dart program to print 1 to 10 but not 6
  var item = 1;
  while (item <= 10) {
    if (item == 6) {
      item++;
      continue;
    }
    print(item);
    item++;
  }
}
