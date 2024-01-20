class Rbi
{
    int roi()
    {
      return 0;
    }
}
class Sbi extends Rbi
{
  int roi()
  {
    return 7;
  }
}
class Icici  extends Rbi
{
  int roi()
  {
    return 8;
  }
}
class Axis extends Rbi
{
  int roi()
  {
    return 9;
  }
}

void main()
{

  var r= Rbi();

   r = Sbi();
  print(r.roi());

   r = Icici();
  print(r.roi());

   r = Axis();
  print(r.roi());


}
