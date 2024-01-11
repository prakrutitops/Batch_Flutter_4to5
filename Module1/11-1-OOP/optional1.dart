class Tops
{
    Tops(var id,var name,[var surname])
    {
        print("Your id is $id");
        print("Your name is $name");
        print("Your surname is $surname");
    }



}
void main()
{
   var t1 = Tops(101,"a","b");
   var t2 = Tops(102,"b","c");
   var t3 = Tops(103,"c");
   var t4 = Tops(104,"d");
}