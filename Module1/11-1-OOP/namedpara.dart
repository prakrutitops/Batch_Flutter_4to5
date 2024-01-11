class Tops
{
    Tops(var id,{var name,var surname})
    {
        print("Your id is $id");
        print("Your name is $name");
        print("Your surname is $surname");
    }



}
void main()
{
   var t1 = Tops(101,surname: "b",name: "a",);
   var t2 = Tops(102,name: "c",surname: "d");
   var t3 = Tops(103,name: "p",surname: "q");
   var t4 = Tops(104,name: "x",surname: "y");
}