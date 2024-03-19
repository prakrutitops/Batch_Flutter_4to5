import 'package:flutter/material.dart';
import 'package:sqflitedb/mydrawar.dart';

import 'colors.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context)
  {
     return SafeArea(
        child: Scaffold(
        drawer: MyDrawal(),
    appBar: AppBar(
    backgroundColor: MyColors.primaryColor,
    centerTitle: true,
    title: Text("create and store category"),
    ),
        )
     );
  }
}
