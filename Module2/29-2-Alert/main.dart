import 'package:flutter/material.dart';
import 'package:widgetsex12/confirm.dart';
import 'package:widgetsex12/select.dart';

void main()
{
  runApp(MaterialApp(home:MyApp3()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text("Simple Alert"),),
          body: Center(

              child: Column(

                  children: [

                      ElevatedButton
                  (
                  onPressed: ()
                  {

                      showdialog123(context);

                  },
                  child: Text("Click Me"))


                  ],


              ),

          ),

      );
  }

  showdialog123(BuildContext context)
  {

    Widget okbutton = ElevatedButton(onPressed: ()
    {

      print("clicked");

    }, child: Text("OK"));

      AlertDialog alert = AlertDialog(
          title: Text("Simple Alert"),
          content: Text("This is an alert message."),
          actions:
          [
            okbutton
          ],
      );

      showDialog(context: context, builder: (BuildContext context)
      {
          return alert;
      });


  }
}
