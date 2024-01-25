void main()
{

  Set<dynamic> set = Set();
  //set will remove duplicate elements
  set.add("a");
  set.add("b");
  set.add("c");
  set.add("d");
  set.add("a");
  set.add(5);

  Set<int>set2 = Set();
  set2.add(1);
  set2.add(2);
  set2.add(3);
  set2.add(4);

  set.addAll(set2);



  Set<String>set3 = Set();
  set3.add("Android");
  set3.add("Testing");
  set3.add("Flutter");
  set3.add("Java");

  set.addAll(set3);

  print(set);
}