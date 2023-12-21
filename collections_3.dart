// Collections

//--Map
void main() {
  //Map is like python's dictionary
  Map<String, String> myMap = {
    'fruit': 'mango',
    'football': 'chelsea',
    'food': 'jollof',
    'weather': 'rainy'
  };
  print(myMap);
  
  // properties
  print(myMap.keys);
  print(myMap.values);
  print(myMap.length);
  print(myMap.containsKey('fruit'));
  
  //loop
  for (MapEntry i in myMap.entries){
    print('key= ${i.key}, value= ${i.value}');
    
  }
 myMap.forEach((i,v)=> print ('$i $v'));
 print('======');
 Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
 mathMarks.removeWhere((i,v)=> v==32);
 print(mathMarks);
}
