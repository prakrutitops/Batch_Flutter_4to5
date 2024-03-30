import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/shimmer.dart';
import 'add.dart';
import 'model.dart';

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
  late bool _dataenabled=true;

  @override
  void initState()
  {
    // TODO: implement initState
    //super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Student Portal"),),
      body: RefreshIndicator(
        onRefresh: _pullRefresh,
        child:  FutureBuilder<List>
          (
          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot)
          {

            if(_dataenabled==true)
            {

            }

            if(_dataenabled==false)
            {
                LoadingListPage();
            }

            if(snapshot.hasData)
            {
              _dataenabled=true;



              return Model(list:snapshot.data!!);
            }
            if(snapshot.hasError)
            {
              _dataenabled=true;
              print('Network Not Found');
            }

            _dataenabled=false;
            return LoadingListPage();
          },




        ),


      ),


        floatingActionButton: FloatingActionButton
          (
            onPressed: ()
            {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddDetails()));
            },
            child: Icon(Icons.add),

        ),

    );
  }

  Future<List> getdata() async
  {
    var resp = await http.get(Uri.parse("https://chaitalijivani.000webhostapp.com/API/studentdetailview.php"));
    return jsonDecode(resp.body);

  }

  Future<void> _pullRefresh()async
  {

    var resp = await http.get(Uri.parse("https://chaitalijivani.000webhostapp.com/API/studentdetailview.php"));
    return jsonDecode(resp.body);

  }
}
