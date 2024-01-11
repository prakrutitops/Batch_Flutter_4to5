class TopsTech
{
    //para
    TopsTech(var id,var name)
    {
      print("Your id is $id");
      print("Your name is $name");
    }
    //default
    TopsTech.ofc1()
    {
        print("default constructor called");
    }

    TopsTech.ofc2(var id,var name,var surname)
    {
      print("Your id is $id");
      print("Your name is $name");
      print("Your surname is $surname");
    }


}
void main()
{

    var t1 = TopsTech.ofc1();
    var t2 = TopsTech.ofc2(101, "vijay", "shukla");
    var t3 = TopsTech(101,"ajay");

}