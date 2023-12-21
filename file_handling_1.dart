//File Handling

// Reading File
import 'dart:io';

void main() {
  // reading txt
  // creating file object
  File file = File('test.txt');
  // read file
  String contents = file.readAsStringSync();
  // print file
  print(contents);

  // get file location
  print('File path ${file.path}');

  // get absolute path
  print('File absolute path: ${file.absolute.path}');

  //get file size
  print('File size: ${file.lengthSync()}');

  // get last modified
  print('File last modified: ${file.lastModifiedSync()}');

  //reading csv
  File file1 = File('test.csv');
  String contents1 = file1.readAsStringSync();
  List<String> lines = contents1.split('\n');
  print('-------------');
  print(lines);
  for (String line in lines) {
    print(line);
  }
  //reading some part
  String contents2 = file.readAsStringSync().substring(10, 20);
  print(contents2);
}
