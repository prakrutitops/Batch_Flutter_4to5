import 'package:flutter/material.dart';

import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:MyApp2()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController myname = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Login Form"),),
    body: Center(

        child: Column(

          children: [


              TextFormField(

                controller: myname,
                decoration: InputDecoration(hintText: "Enter Your name"),


              ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ), TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ), TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),
            TextFormField(

              controller: myname,
              decoration: InputDecoration(hintText: "Enter Your name"),


            ),




            ElevatedButton(onPressed: ()
            {

                String e = myname.text.toString();
                print(e);

            }, child: Text("Submit"))


          ],

        ),

    ),
    floatingActionButton: FloatingActionButton(
      onPressed: ()
      {


         print("Clicked");
      },
      child: Icon(Icons.add),
      ) ,



    );
  }
}

