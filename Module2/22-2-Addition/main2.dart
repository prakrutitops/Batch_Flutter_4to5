import 'package:flutter/material.dart';

import 'add.dart';

class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Home Page"),),
    body: Center(),
    floatingActionButton: FloatingActionButton(onPressed: ()
    {
        Navigator.push(context,MaterialPageRoute(builder: (context) => AddPage()));

    },child: Icon(Icons.add),),);
  }
}
