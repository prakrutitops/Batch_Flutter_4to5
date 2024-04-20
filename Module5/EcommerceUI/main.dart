import 'package:flutter/material.dart';
import 'package:flutterappui/screens/home/home_screen.dart';
import 'constants.dart';

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
          title: 'The Flutter Way',
          theme: ThemeData
            (
              textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
        home: HomeScreen(),
        );
  }

}
