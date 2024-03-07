import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/color.dart';

import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:BottomNavigation()));
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
    return Scaffold(
      appBar:AppBar(title: Text("Navigation Drawer Example"),),
      body: Center(

          child: Text
            (
              'A drawer is an invisible side screen.',
             style: TextStyle(fontSize: 20.0),
            ),





      ),drawer: Drawer(

        child: ListView(

          children: [

              UserAccountsDrawerHeader(

                  accountName: Text("Abhishek Mishra"),
                  accountEmail: Text("abhishek@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),

              ),

            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person), title: Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout), title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),






          ],


        ),

    ),
    );
  }
}

