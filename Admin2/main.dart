import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uploadimg/screens/admin/front/front.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      debugShowCheckedModeBanner: false,
      title: 'E wishes',
      home: AdminFront(),
    );
  }
}