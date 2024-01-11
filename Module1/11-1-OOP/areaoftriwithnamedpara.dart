class CalArea
{
  CalArea({required int p,required double r,required int n})
  {
      var ans = p*n*r/100;
      print(ans);
  }
}
void main()
{
  var c1 = CalArea(p:1000,n:1,r:3.4);


}