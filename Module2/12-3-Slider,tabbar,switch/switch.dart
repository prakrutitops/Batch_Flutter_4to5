import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  const SwitchEx({super.key});

  @override
  State<SwitchEx> createState() => _SwitchExState();
}

class _SwitchExState extends State<SwitchEx>
{
  bool isswitch = false;
  String textValue="";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(title: Text("Switch Example"),),
        body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:
              [
                    Transform.scale(
                        scale: 2,
                        child: Switch
                          (
                            value: isswitch,
                            onChanged: (bool value)
                            {

                              toggleSwitch(value);

                            },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,



                        ),


                    ),
                  Text("$textValue")




              ],

            ),


        ),

    );
  }

  void toggleSwitch(bool value)
  {

    if(isswitch == false)
    {
      setState(() {
        isswitch = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isswitch = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }

  }
}
