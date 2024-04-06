import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class Dashboard extends StatefulWidget
{
 // const Dashboard({super.key});




  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
{

  late SharedPreferences logindata;
  late String mymob;

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();

    initial();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Welcome $mymob"),actions:
    [
      IconButton(onPressed: ()
      {
        logindata.setBool('tops', true);
        Navigator.pushReplacement(context,
            new MaterialPageRoute(builder: (context) => LoginScreen()));

      }, icon: Icon(Icons.logout))
    ],),);
  }

  void initial() async
  {
    logindata = await SharedPreferences.getInstance();

    setState(() {


      mymob = logindata.getString('mobile')!;

    });

  }
}
