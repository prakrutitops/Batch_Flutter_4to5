import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonregisterlogin/constants.dart';
import 'package:jsonregisterlogin/signup.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';
void main()
{
  runApp(MaterialApp(home:LoginScreen()));
}
class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;
  late double mywidth,myheight;

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

    mywidth = MediaQuery.of(context).size.width;
    myheight = MediaQuery.of(context).size.height;
    print(mywidth);
    print(myheight);
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Screen"),backgroundColor:kBrown,foregroundColor: kGrey,),
        body:Container
          (
            margin: EdgeInsets.all(20.0),
            child: Column
              (
                children:
                [
                  TextFormField(controller: mobile,decoration: InputDecoration(hintText: "Enter Your Mobile Number"),),
                  SizedBox(height: 10),
                  TextFormField(controller:password,decoration: InputDecoration(hintText: "Enter Your Password"),),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                  {

                    logindata.setBool('tops', false);
                    logindata.setString('mobile',mobile.text.toString());
                    checklogin();
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Dashboard()));


                  }, child: Text("Login")),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignupScreen()));
                  }, child: Text("Do You want to signup?"))
                ],
              ),
          )
      );
  }

  void checklogin() async
  {
    var url = Uri.parse("https://chaitalijivani.000webhostapp.com/API/login.php");

    var response = await http.post(url,body:
    {

      "mobile": mobile.text.toString(),
      "password": password.text.toString(),

    });
    var data = json.decode(response.body);
    
    if(data==0)
    {
      //print("fail");
      final snackBar = SnackBar(
        content: const Text('Login Fail'),

      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    else
    {
      //print("success");
      final snackBar = SnackBar(
        content: const Text('Login Success'),

      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);


    }
   
  
  }

  void checkdata()async
  {
    logindata = await SharedPreferences.getInstance();//initialize sharedprefrence
    newuser = logindata.getBool('tops') ?? true;

    if(newuser==false)
    {
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Dashboard()));
    }
  }

  }


