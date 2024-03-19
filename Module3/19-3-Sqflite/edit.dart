import 'package:flutter/material.dart';

import 'db.dart';
import 'main.dart';

class Edit extends StatefulWidget
{
  String email;
  Edit({required this.email});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit>
{
    MyDb db = MyDb();

    TextEditingController name = TextEditingController();
    TextEditingController surname = TextEditingController();
    TextEditingController email = TextEditingController();


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db.open();

    Future.delayed(Duration(milliseconds: 500),()async
    {

      var data = await db.getStudent(widget.email);
      if(data != null)
      {
        name.text = data["name"];
        surname.text = data["surname"].toString();
        email.text = data["email"];
        setState(() {});
      }
      else
      {

        print("No any data with Email : " + widget.email.toString());
      }




    });




    }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar
        (
          title: Text("Your Email id is: ${widget.email}"),


        ),
        body: Center
          (
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
                db.db.rawUpdate("Update students set name=?,surname=?,email=? where email=?",[name.text.toString(),surname.text.toString(),email.text.toString(),widget.email.toString()]);

                name.text = "";
                surname.text = "";
                email.text = "";

                Navigator.push(context,MaterialPageRoute(builder: (context) => ViewData()));
              }, child: Text("Update Data"))



            ],

          ),

          )


      ,);
  }
}
