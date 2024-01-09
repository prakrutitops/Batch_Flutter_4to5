import 'dart:io';
class Bank
{
    var accno;
    var accname;
    var accbal;
}
void main()
{

    print("Enter accno for first holder");
    var a = int.parse(stdin.readLineSync().toString());

    print("Enter accname for first holder");
    var b = stdin.readLineSync().toString();

    print("Enter balance for first holder");
    var c = int.parse(stdin.readLineSync().toString());

    var b1 = Bank();
    b1.accno=a;
    b1.accname=b;
    b1.accbal=c;

    var b2 = Bank();
    b2.accno=102;
    b2.accname="pqrs";
    b2.accbal=2000;

    var b3 = Bank();
    b3.accno=103;
    b3.accname="tyui";
    b3.accbal=3000;


    print("Your 1st Holder Details are : ${b1.accno} , ${b1.accname}, ${b1.accbal}");
    print("Your 2nd Holder Details are : ${b2.accno} , ${b2.accname}, ${b2.accbal}");
    print("Your 3rd Holder Details are : ${b3.accno} , ${b3.accname}, ${b3.accbal}");
}