import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class UploadImages extends StatefulWidget
{
  const UploadImages({super.key});

  @override
  State<UploadImages> createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages>
{

  Future<List> getdata()async
  {
    var url = Uri.parse("https://topstech8.000webhostapp.com/Ewishes/Category/category_view.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }

  Future<List> pullrefresh()async
  {
    var url = Uri.parse("https://topstech8.000webhostapp.com/Ewishes/Category/category_view.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Json Crud App"),),
      body: RefreshIndicator(
        onRefresh: pullrefresh,
        child: Center
          (
          child: FutureBuilder<List>
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
            },),
        ),
      ),

      );

  }




}
