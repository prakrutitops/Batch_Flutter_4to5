import 'package:flutter/material.dart';
import 'package:sqfliteex/db.dart';

import 'add.dart';

void main()
{
  runApp(MaterialApp(home:ViewData()));
}
class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData>
{
    MyDb db = MyDb();
    List<Map> slist = [];

    @override
  void initState()
    {
    // TODO: implement initState
    super.initState();
    db.open();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Database Crud Operation"),),
        body: SingleChildScrollView
          (
            child: slist.length == 0 ? Text("No any students to show.") :

          Column
            (
            children: slist.map((stuone)
            {
              return Card
              (
                    child: ListTile
                      (
                      leading: Icon(Icons.people),
                      title: Text(stuone["name"]),
                      subtitle: Text("Surname:" + stuone["surname"].toString() + ", Email: " + stuone["email"]),

                      ),
              );

            }).toList()

          )
        ),


        floatingActionButton: FloatingActionButton
          (
          child: Icon(Icons.add),
          onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddData()));
          },

         ) ,
    );
  }
    void getdata()
    {
      Future.delayed(Duration(milliseconds: 500),()async
      {

        slist = await db.db.rawQuery('SELECT * FROM students');
        setState(()
        {

        });
      });

    }
}

