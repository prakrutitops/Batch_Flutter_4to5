//with return type with para
int add(int a,int b)
{
  int c = a+b;
  return c;
}

//with return type without para
int add2()
{
  int a=6;
  int b=5;
  int c = a+b;

  return c;
}

//with para without return type
add3(int a,int b)
{
  int c = a+b;
  print(c);
}

//without return type without para
add4()
{
  int a = 6;
  int b = 5;
  int c = a+b;
  print(c);
}

void main()
{
  print(add(6, 5));
  print(add2());
  add3(6, 5);
  add4();
}