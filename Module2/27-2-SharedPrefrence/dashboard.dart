import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class DashboardPage extends StatefulWidget
{
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
{
  late SharedPreferences logindata;
  late String myusername;

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    initial();

  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Welcome $myusername"),
      actions:
      [
          IconButton(onPressed: ()
          {

            logindata.setBool('tops', true);
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => MyApp()));

          }, icon: Icon(Icons.logout))

      ],actionsIconTheme: IconThemeData(),),);
  }

  void initial() async
  {
    logindata = await SharedPreferences.getInstance();

    setState(() {


      myusername = logindata.getString('username')!;

    });
  }
}
