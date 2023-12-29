import 'dart:io';

//---practicals
void main() {
  // Write a dart program to add your name to “hello.txt” file.
  File file = File('hello.txt');
  file.writeAsStringSync('Thomas\n');

  //Write a dart program to append your friends name to a file that
  // already has your name.
  file.writeAsStringSync('Kyeimiah\n', mode: FileMode.append);
  String content = file.readAsStringSync();
  print(content);

  //Write a dart program to get the current working directory.
  print('${file.absolute.path}');

  //Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
  file.copySync('hello_copy.txt');
  print('done copying');

  //Write a dart prgram to create 100 files using loop.
  for (int i = 0; i < 100; i++) {
    File createFile = File('hello_${i + 1}');
    // createFile.writeAsStringSync('hello ${i + 1}');
    if (createFile.existsSync()) {
      createFile.deleteSync();
    }
  }
  print('done');

  //Write a dart program to delete the file “hello_copy.txt”.
  //Make sure you have created the file “hello_copy.txt.
  File file2 = File('hello_copy.txt');
  file2.deleteSync();

//Write a dart program to store name, age, and address of students
//in a csv file and read it.

  File studFile = File('studFile.csv');
  studFile.writeAsStringSync('Name,Age,Address\n');
  for (int i = 0; i < 5; i++) {
    stdout.write('Enter name of student ${i + 1}: ');
    String? name = stdin.readLineSync();
    stdout.write('Enter age of student ${i + 1}: ');
    String? age = stdin.readLineSync();
    stdout.write('Enter address of student ${i + 1}: ');
    String? address = stdin.readLineSync();

    studFile.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  }
  String contents = studFile.readAsStringSync();
  print(contents);
}

