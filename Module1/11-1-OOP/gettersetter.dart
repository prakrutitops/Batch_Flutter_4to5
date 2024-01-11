import 'dart:io';

//Model class -
class Student
{
    var _id;
    var _name;

  get id => _id;

  set id(value) {
    _id = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }

//setter-getter




}
void main()
{
    print("Enter Your id");
    var id = int.parse(stdin.readLineSync().toString());

    print("Enter Your name");

    var name = stdin.readLineSync().toString();

    var s1 = Student();
    //value set
    s1._id=id;
    s1.name=name;

    //value get
    print(s1._id);
    print(s1._name);
}