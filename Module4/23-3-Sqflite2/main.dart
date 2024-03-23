import 'package:flutter/material.dart';
import 'home.dart';

void main()
{
  runApp(MyApp());
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
    return MaterialApp(
      title: 'Flutter Sqflite Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
          primarySwatch: Colors.blue,
        ),
         home: HomePage(),
    );
  }
}
