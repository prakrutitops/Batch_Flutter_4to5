import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
    checkdata();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Center
          (

              child: Padding(
                padding: const EdgeInsets.all(20.00),
                child: Column(

                    children: [

                      TextFormField(controller:username ,decoration: InputDecoration(hintText: "Enter Your Name",),),
                      SizedBox(height: 15),
                      TextFormField(controller:password ,obscureText:true,decoration: InputDecoration(hintText: "Enter Your Password"),),
                      SizedBox(height: 15),
                      ElevatedButton(onPressed: ()
                      {
                        //get detail from textfield to variable

                          String uname = username.text.toString();
                          String pass = password.text.toString();

                            if(uname!='' && pass!='')
                            {
                              print("Logged in succesfully");
                              logindata.setBool('tops', false);
                              logindata.setString('username',uname);
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardPage()));  
                            }
                            else
                            {

                            }



                       
                      }, child: Text("Login"))


                    ],

                ),
              ),


          ),


      );
  }

  void checkdata() async
  {
    logindata = await SharedPreferences.getInstance();//initialize sharedprefrence
    newuser = logindata.getBool('tops') ?? true;

      if(newuser==false)
      {
        Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => DashboardPage()));
      }
  }
}
