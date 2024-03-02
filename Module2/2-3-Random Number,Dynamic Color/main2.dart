import 'package:flutter/material.dart';

class BackGround extends StatefulWidget
{
  const BackGround({super.key});

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround>
{

  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Background Color"),),
    body: Container(

        color: _backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [


              ElevatedButton(onPressed: ()
              {
                _changeBackgroundColor();

              }, child: Text("Click to chnage background"))

            ],

        ),


    ),);
  }

  void _changeBackgroundColor()
  {

      setState(() {


        _backgroundColor = _backgroundColor == Colors.white ? Colors.blue : Colors.white;


      });

  }
}
