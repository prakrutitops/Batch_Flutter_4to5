import 'package:flutter/material.dart';
import 'package:sqfliteex/db.dart';
import 'package:sqfliteex/main.dart';

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
     MyDb db = MyDb();

     TextEditingController name = TextEditingController();
     TextEditingController surname = TextEditingController();
     TextEditingController email = TextEditingController();

    @override
  void initState()
    {
    // TODO: implement initState
      super.initState();
      db.open();
    }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Add Details"),),
      body: Center(

          child: Column(

            children: [

              TextField
                (
                  controller: name,
                  decoration: InputDecoration
                    (
                      hintText: "Enter Your Name",

                    ),
                ),
              TextField
                (
                controller: surname,
                decoration: InputDecoration
                  (
                  hintText: "Enter Your Surname",

                ),
                ),
              TextField
                (
                controller: email,
                decoration: InputDecoration
                  (
                  hintText: "Enter Your Email",

                ),
                ),
              ElevatedButton(onPressed: ()
                {
                  print("clicked");
                  db.db.rawInsert("INSERT INTO students (name, surname, email) VALUES (?, ?, ?);",[name.text.toString(),surname.text.toString(),email.text.toString()]);

                  name.text = "";
                  surname.text = "";
                  email.text = "";

                  Navigator.push(context,MaterialPageRoute(builder: (context) => ViewData()));
                }, child: Text("Add Data"))



            ],

          ),

      ),


    );
  }
}
