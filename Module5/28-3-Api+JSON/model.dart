import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  late List list;

  Model({required this.list});

  @override
  Widget build(BuildContext context)
  {

    return ListView.builder(
      itemBuilder: (context,i)
    {
        return ListTile
        (
        leading: Image.network(list[i]['photo'],width: 50,height: 200,),
        title: Text(list[i]['fname']),
        subtitle:Text(list[i]['surname']) ,

        );
    },
      itemCount:list.length,);
    }
  }



