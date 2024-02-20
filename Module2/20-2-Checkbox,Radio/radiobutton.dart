import 'package:flutter/material.dart';

class RadioEx extends StatefulWidget {
  const RadioEx({super.key});

  @override
  State<RadioEx> createState() => _RadioExState();
}

enum BestTutorSite { javatpoint,w3schools,tutorialandexample}

class _RadioExState extends State<RadioEx>
{
  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Radio Button Example"),),

      body: Center(

          child: Column(

            children: [


              ListTile(
                title: const Text('www.javatpoint.com'),
                leading: Radio(
                  value: BestTutorSite.javatpoint,
                  groupValue: _site,
                  onChanged: (BestTutorSite? value)
                  {
                    setState(()
                    {
                      _site = value!;
                    });
                  },
                ),
              ),

              ListTile(
                title: const Text('www.w3school.com'),
                leading: Radio(
                  value: BestTutorSite.w3schools,
                  groupValue: _site,
                  onChanged: (BestTutorSite? value)
                  {
                    setState(()
                    {
                      _site = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('www.tutorials.com'),
                leading: Radio(
                  value: BestTutorSite.tutorialandexample,
                  groupValue: _site,
                  onChanged: (BestTutorSite? value)
                  {
                    setState(()
                    {
                      _site = value!;
                    });
                  },
                ),
              ),


            ],

          ),

      ),

    )

    ;
  }
}
