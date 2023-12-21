// Collections

//--Practicals
void main() {
  // Create a list of names and print all names using list.
  List<String> nameList = [
    'Thomas',
    'Nathaniel',
    'Emmanuel',
    'Bruno',
    'Liz',
    'Madeleine',
    'Stephanie'
  ];
  print(nameList);

  // Create a set of fruits and print all fruits using loop.
  List<String> fruits = [
    'Apple',
    'Banana',
    'Coconut',
    'Guava',
    'Orange',
    'Pineapple'
  ];
  fruits.forEach((fruit) => print(fruit)); //or
  for (String fruit in fruits) {
    print(fruit);
  }

  // Create a program thats reads list of expenses amount and print total.
  List<int> myExpenses = [1000, 2000, 400, 30, 3, 265];
  int total = 0;
  for (int i in myExpenses) {
    total += i;
  }
  print('Total: $total');

  // Create an empty list of type string called days.
  //Use the add method to add names of 7 days and print all days.
  List<String> myDays = [];
  myDays.addAll([
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ]);
  print(myDays);

  // Add your 7 friend names to the list. Use where to find a name that starts with alphabet A.
  List<String> frndNames = [
    'Amo',
    'Abrokwah',
    'Adjekum',
    'Kyeimiah',
    'Sekyere',
    'Oteng'
  ];
  List<String> aStartNames = frndNames.where((i) => i.startsWith('A')).toList();
  print(aStartNames);

  // Create a map with name, address, age, country keys and store values to it.
  //Update country name to other country and print all keys and values.
  Map<String, dynamic> myMap = {
    'name': 'Thomas',
    'address': '1240 Rue Cardinal',
    'age': '29',
    'country': 'Canada'
  };
  print(myMap);
  myMap['country'] = 'USA';
  myMap['address'] = '120 street MA, US';
  print(myMap);

  // Create a map with name, phone keys and store some values to it.
  // Use where to find all keys that have length 4.
  Map<dynamic, dynamic> myMap2 = {
    'name': 'Thomas',
    1: '_.,@',
    2: 'abc',
    3: 'def',
    4: 'ghi',
    5: 'jkl',
    6: 'mno',
    7: 'pqrs',
    8: 'tuv',
    9: 'wxyz'
  };
  print(myMap2);
  var filteredEntries= myMap2.entries.where((i) => i.value.length == 4);
  for (var entry in filteredEntries){
    print('${entry.key}: ${entry.value}');
    print (filteredEntries.runtimeType);
  }
 

  
  
  
}
