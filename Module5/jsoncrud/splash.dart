import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
    checkConnection();
  }

  void checkConnection() async
  {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile)
    {
      //check_if_already_login();
      Timer(Duration(seconds: 6),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp())));
    }
    else if (connectivityResult == ConnectivityResult.wifi)
    {
      Timer(Duration(seconds: 6),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp())));
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
          backgroundColor: Colors.grey,
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
  Widget build(BuildContext context)
  {
    return Scaffold(body: Center(child:Lottie.network("https://chaitalijivani.000webhostapp.com/animations/Animation%20-%201707821295972%20(1).json",width: 250,height: 250) ,),);
  }
}
