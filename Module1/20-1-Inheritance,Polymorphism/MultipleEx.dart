abstract class A2
{
  void a2();

}
abstract class B2
{
  void b2();

}

class MultipleEx implements A2,B2
{
  void mul()
  {
    print("Multiple Called");
  }

  void a2()
  {
      print("a2 called");
  }
  void b2()
  {
    print("b2 called");
  }

}
void main()
{
  var m1 = MultipleEx();
  m1.a2();
  m1.b2();
}