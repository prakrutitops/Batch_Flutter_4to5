import 'package:flutter/material.dart';

class AddPage extends StatefulWidget
{
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Calculation"),),
    body: Center(

        child: Column(

            children: [

              TextField(controller: first,decoration: InputDecoration(hintText: "Enter First Value"),),
              TextField(controller: second,decoration: InputDecoration(hintText: "Enter Second Value"),),
              ElevatedButton(onPressed: ()
              {

                var  a = int.parse(first.text.toString());
                var b = int.parse(second.text.toString());

                var c = a+b;

                print(c);


              }, child: Text("Click"))

            ],


        ),


    ),);
  }
}
