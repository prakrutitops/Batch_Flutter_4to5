class A
{
    void a1()
    {
      print("a1 called");
    }
}
class B extends A
{
  void b1()
  {
    print("b1 called");
  }
}
class C extends B
{
  void c1()
  {
    print("c1 called");
  }
}
void main()
{

  var c11 = C();
  c11.a1();
  c11.b1();
  c11.c1();
}