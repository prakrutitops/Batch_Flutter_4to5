import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return SplashScreenPage();
  }
}

class SplashScreenPage extends State<SplashScreen>{


  @override
  void initState()
  {
    checkConnection();
  }

  void checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile)
    {
      Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Onboarding())));
    }
    else if (connectivityResult == ConnectivityResult.wifi)
    {
      Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Onboarding())));
    }
    else
    {
      _showConnectionDialog();
    }
  }

  void _showConnectionDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kGrey,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGold,
      body: Center(
        child: Transform.rotate(
          angle: -pi / 5,
          child: Image
            (
              image: AssetImage('images/logo.png'),
              height: MediaQuery.of(context).size.height - 360,
              width: MediaQuery.of(context).size.width - 330,
           //  height: 100,
           //  width: 100,
          ),
        //),
      ),
    ));
  }
}