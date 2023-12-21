// Collections

//--Where
void main() {
  //Iterable<E>
  //where(bool test(E element))

  // more like where in python used to filter specific items
  // filtering old number from list
  List<int> myList = [1, 2, 3, 4, 5, 6];
  List<int> oddList = myList.where((i) => i.isOdd).toList();
  print(myList);
  print(oddList);

  //filtering days starting with S
  List<String> myDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  List<String> sDays = myDays.where((i) => i[0] == 'S').toList();
  //or
  List<String> sDayss = myDays.where((i) => i.startsWith('S')).toList();
  print(myDays);
  print(sDays);
  print(sDayss);
}
