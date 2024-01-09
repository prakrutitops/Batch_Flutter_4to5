class Parameterized
{

     var a;
     var b;
     var c;
     var d;

    Parameterized(var id,var name,var surname,[var email])
    {
        a = id;
        b = name;
        c = surname;
        d = email;


    }

    display()
    {
      print("Your id is $a , Your name is $b , Your Surname is $c , Your Email is $d");
    }
}
void main()
{
     var p1 = Parameterized(1,"A","B","A@gmail.com");
     var p2 = Parameterized(2,"B","B");
     var p3 = Parameterized(3,"C","B");

     p1.display();
     p2.display();
     p3.display();
}