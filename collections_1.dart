// Collections

//--List
void main(){
  // fixed length list
  var mylist = List <int>.filled(5,3);
  print(mylist);
  
  // growable
  var mylist1 = [1,2,3,4,5,6];
  var mylist2 = ['a','b'];
  
  print(mylist1[0]);
  print(mylist2);
  
  //lenght
  print(mylist2.length);
  
  //changing value
  mylist2[0]='apple';
  mylist2[1]='banana';
  print(mylist2);
  
  // mutable can change - immutable can't change (like python tuple)
  List <String> fruit = ['pawpaw', 'orange','grapes']; //immutable
  const List <String> fruits = ['apple', 'mango','guava']; //immutable
  print(fruit);
  print(fruits);
  print('=====');
  fruit[0]='pineapple';
  // fruits[0]='pineapple';
  print(fruit);
  // print(fruits); 
  print('=====');
  
  // some list properties
  print(fruit.first);
  print(fruit.last);
  print(fruit.reversed);
  print(fruit.isNotEmpty);
  print(fruit.isEmpty);
  print(fruit.length);
  print(fruit.removeLast());
  fruit.add('a');
  fruit.insert(3, 'watermelon');
  fruit.addAll(['c','d']);
  fruit.removeLast();
  print(fruit);
  
  //loops
  fruit.forEach((n)=>print(n));
  mylist.forEach((n)=> print(n*2));
  
  // combine 2 list
  print([...fruit,...fruits]);
  
}
