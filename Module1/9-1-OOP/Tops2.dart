class Tops2
{
  static var count = 0;

  Tops2()
  {
    count++;
    print(count);
  }
}

void main()
{
   var t1 = Tops2();
   var t2 = Tops2();
   var t3 = Tops2();
}