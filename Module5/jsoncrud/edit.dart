import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

class Edit extends StatefulWidget
{
  //const Edit({super.key});
  late List list;
  int index;

  Edit({required this.list,required this.index});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController course = TextEditingController();

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    fname = TextEditingController(text: widget.list[widget.index]['fname']);
    lname = TextEditingController(text: widget.list[widget.index]['lname']);
    course= TextEditingController(text: widget.list[widget.index]['course']);

  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Detail"),),
      body: Center
        (
          child: Column
            (
              children:
              [
                TextField(
                  controller: fname,
                  decoration: InputDecoration(hintText: "Enter Firstname",labelText: "Enter Name"),
                ),
                TextField(
                  controller: lname,
                  decoration: InputDecoration(hintText: "Enter Lastname",labelText: "Enter Price"),

                ),

                TextField(
                  controller: course,
                  decoration: InputDecoration(hintText: "Enter Course",labelText: "Enter Description"),

                ),
                MaterialButton(
                  child: Text("Edit Data"),
                  onPressed: ()
                  {
                    editData();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> MyApp()),
                    );
                  },
                )
              ],
            ),
        ),
    );
  }

  void editData()
  {

    var url = Uri.parse("https://chaitalijivani.000webhostapp.com/API/studentupdate.php");
    http.post(url,body:
    {
      'id':widget.list[widget.index]['id'],
      'fname':fname.text.toString(),
      'lname':lname.text.toString(),
      'course':course.text.toString(),

    });

  }
}
