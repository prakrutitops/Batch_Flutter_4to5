import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/main.dart';

class AddDetails extends StatefulWidget
{
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController course = TextEditingController();
  late String firstname,lastname,mycourse;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Add Details"),),
      body: Center(

        child: Column(

          children: [

            TextFormField(controller: fname,decoration: InputDecoration(hintText: "Enter Firstname"),),
            SizedBox(height: 10),
            TextFormField(controller: lname,decoration: InputDecoration(hintText: "Enter Lastname"),),
            SizedBox(height: 10),
            TextFormField(controller: course,decoration: InputDecoration(hintText: "Enter Course"),),
            SizedBox(height: 10),
            ElevatedButton(onPressed: ()
            {
                 firstname = fname.text.toString();
                 lastname = lname.text.toString();
                 mycourse = course.text.toString();




                 insertdata(firstname,lastname,mycourse);

                 Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp()));

            }, child: Text("Add"))
          ],


        ),

      ),

    );
  }

  void insertdata(String firstname, String lastname, String mycourse)
  {
    print(firstname);
    print(lastname);
    print(mycourse);

      var url = Uri.parse("https://chaitalijivani.000webhostapp.com/API/studentdetailinsert.php");
      http.post(url,body:
      {


          "fname":firstname,
          "lname":lastname,
          "course":mycourse

      });


  }
}
