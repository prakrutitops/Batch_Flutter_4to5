class Student2
{
    int id=0;
    String name="";

    Student2(int id,String name)
    {
        this.id = id;//a=5
        this.name = name;
    }

    void display()
    {
        print("$id and $name");
    }
}

void main()
{
    var s2 = Student2(101,"xyz");
    s2.display();
}