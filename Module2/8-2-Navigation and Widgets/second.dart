import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Second Page"),),
        body: Center(

          child: ElevatedButton(
            onPressed: ()
            {
              Navigator.pop(context);

            }, child: Text("Exit"),)
        ),

      );

  }

}