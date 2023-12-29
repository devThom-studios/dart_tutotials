//File Handling

import 'dart:io';

void main() {
// Writing File
  File file = File('test.csv');
  file.writeAsStringSync(
      'yaw,kojo,032034475858\n'); //this write over the existing one
  print('file written');
  file.writeAsStringSync('amo,joy,0541094520\n',
      mode: FileMode.append); //this append to the existing one
  print('file appended');

  //---------------------------------------------------------------
  // In the example below, we will ask user to enter name and phone
  // of 3 students and write it to a csv file named student.csv
  //---------------------------------------------------------------

  File file2 = File('student.csv');
  file2.writeAsStringSync('name,phone\n');
  for (int i = 0; i < 1; i++) {
    print('Enter the name of student ${i + 1}: ');
    //stdout.write() can be used in replace of print()
    String? name = stdin.readLineSync();

    print('Enter phone of student ${i + 1}: ');
    String? phone = stdin.readLineSync();

    file2.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");

//Delete file
  File file3 = File('del.txt');
  //file3.deleteSync();
  // print('file deleted');

  //delete file if it exist
  if (file3.existsSync()) {
    file.deleteSync();
    print('File deleted');
  } else {
    print('File does not exist');
  }
}
