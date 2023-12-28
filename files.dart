import 'dart:math';
import 'dart:io';

void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  print('=======');
  add(10, 20);

  List<int> list = [1, 2, 3, 4, 5];
  print(list.length);
  list.add(10);
  print(list);

  //---------------------
  int? num = int.parse(stdin.readLineSync()!);

  Random rand = Random();
  int randInt = rand.nextInt(num) + 1;
  print(randInt);

  print('=======');
  String? rev = stdin.readLineSync();
  if (rev != null) {
    print(rev.runtimeType);
    print(reverse(rev));
  } else {
    print("No input provided or end-of-file encountered");
  }

  List<String> list2 = ['Ama', 'Yaa', 'Kwesi', 'Kwabena', 'Kofi', 'Kwame'];
  List<String> onlyK = list2.where((i) => i[0] == 'K').toList();
  print(onlyK);

  Map<String, String> myDict = {'number': '020304', 'school': 'mcgill'};
  myDict.forEach((k, v) => print('$k $v'));
}

String reverse(String a) {
  String b = a.split('').reversed.join();
  return b;
}

void add(int x, int y) {
  int z = x + y;
  print(z);
}
