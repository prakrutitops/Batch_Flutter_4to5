import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';
void main()
{
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Cricketers"),),
        body:RefreshIndicator(
          onRefresh: _pullRefresh,
          child:  FutureBuilder<List>
          (
          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot)
          {
            if(snapshot.hasData)
            {
              return Model(list:snapshot.data!!);
            }
            if(snapshot.hasError)
            {
              print('Network Not Found');
            }
            return CircularProgressIndicator();
          },




        ),)



       );
  }

  Future<List> getdata() async
  {
      var resp = await http.get(Uri.parse("https://chaitalijivani.000webhostapp.com/API/view.php"));
      return jsonDecode(resp.body);

  }

  Future<void> _pullRefresh()async
  {

    var resp = await http.get(Uri.parse("https://chaitalijivani.000webhostapp.com/API/view.php"));
    return jsonDecode(resp.body);

  }
}
