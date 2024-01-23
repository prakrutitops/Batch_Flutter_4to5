class Student
{
    int id=0;
    String name="";
    static String college="Atmiya";//static variable

    Student(int id,String name)
    {
        this.id=id;
        this.name=name;
    }

    void display()
    {
      print("$id and $name $college");
    }

    static void change()
    {
      college ="VVP";
    }


}
void main()
{




  var s2 = Student(101,"A");
  var s3 = Student(102,"B");
  var s4 = Student(103,"C");
  var s5 = Student(104,"D");

  Student.change();

  //non static method
  s2.display();
  s3.display();
  s4.display();
  s5.display();
}