import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

void main()
{
  runApp(MaterialApp(home:Scaffold(body: MyApp(),),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget
{
  @override
  SplashState createState() => SplashState();

}

class SplashState extends State<MyApp>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Test2())));

  }

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          body: Center
            (
              child: Lottie.asset("images/animation.json",width: 250,height: 250)
            ),

      );
  }

}