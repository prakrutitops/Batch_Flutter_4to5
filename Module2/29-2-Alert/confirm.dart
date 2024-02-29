import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyAppState();
}
enum ConfirmAction {YES,NO}

class _MyAppState extends State<MyApp2>
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

    Widget YesButton = ElevatedButton(onPressed: ()
    {

      Navigator.of(context).pop(ConfirmAction.YES);

    }, child: Text("YES"));

    Widget NoButton = ElevatedButton(onPressed: ()
    {

      Navigator.of(context).pop(ConfirmAction.NO);

    }, child: Text("NO"));

    AlertDialog alert = AlertDialog(
      title: Text("Are you sure you want to exit?"),

      actions:
      [
        YesButton,
        NoButton
      ],
    );

    showDialog(context: context, builder: (BuildContext context)
    {
      return alert;
    });


  }
}
