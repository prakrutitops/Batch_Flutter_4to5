class A
{
  void a1()
  {
    print("a11 called");
  }
}
class B extends A
{
  void b1()
  {
    print("b11 called");
  }
}
class C extends A
{
  void c1()
  {
    print("c11 called");
  }
}
class D implements B,C
{
  void d1()
  {
    print("d11 called");
  }

  @override
  void a1() {
    print("a1 called");
  }

  @override
  void b1() {
    print("b1 called");
  }

  @override
  void c1() {
    print("c1 called");
  }
}

void main()
{
  var d = D();
  d.a1();
  d.b1();
  d.c1();
  d.d1();
}