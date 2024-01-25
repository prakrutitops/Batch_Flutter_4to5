void main()
{

  List<String> data=["A","B","C"];
  data.add("D");
  data.add("D");

  List<String> data2=["P","Q"];
  data2.add("R");

  data.addAll(data2);

  print(data);//fetch whole list
  print(data.length);//fetch total length
  print(data[1]);//fetch index wise detail

  data[1]="Z";//replace

  print(data[1]);
  print(data);
  data.remove("D");
  data.removeAt(1);
  print(data);//list will be printed in array

  //list will be printed according to index
  for (String element in data)
  {                          // Using Individual Element (Objects)
    print(element);
  }


}