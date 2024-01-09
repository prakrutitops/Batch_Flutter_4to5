class Student
{

    late int id;
    late String name;


}
void main()
{
    var s1 = Student();//Object
    var s2 = Student();

    s1.id = 101;
    s1.name = "xyz";

    s2.id = 102;
    s2.name = "abc";


    print("\n Your id is ${s1.id} , \n Your Name is ${s1.name}");
    print("\n Your id is ${s2.id} , \n Your Name is ${s2.name}");


}