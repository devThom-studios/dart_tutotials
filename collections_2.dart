// Collections

//--Set
void main(){
  Set <String> mySet ={"Apple", "Orange", "Mango"};
  print(mySet);
  
  //properties similar as set
  print(mySet.first);
  print(mySet.last);
  print(mySet.length);
  print(mySet.contains('Apple'));
  mySet.add('Pawpaw');
  mySet.remove('Mango');
  print(mySet);
  
  //loop
  for (String i in mySet){
    print(i);
  }
  //methods
  mySet.clear();
  print(mySet);

  
}
