import 'dart:collection';

void main()
{

  HashSet<int> set = HashSet();
  //set will remove duplicate elements
  set.add(1);
  set.add(2);
  set.add(10);
  set.add(8);
  set.add(7);
  set.add(5);
  set.add(5);

  // Set<int>set2 = Set();
  // set2.add(1);
  // set2.add(2);
  // set2.add(3);
  // set2.add(4);
  //
  // set.addAll(set2);
  //
  //
  //
  // Set<String>set3 = Set();
  // set3.add("Android");
  // set3.add("Testing");
  // set3.add("Flutter");
  // set3.add("Java");
  //
  // set.addAll(set3);

  print(set);
}