class A
{
    a1()
    {
      print("a1 is called");
    }
}
class B extends A
{
  b1()
  {
    print("b1 is called");
  }
}
void main()
{

  var b11 = B();

  b11.a1();
  b11.b1();
}
