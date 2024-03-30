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
          title: Center
              (
                child: Text(list[i]['fname'])
              ),
          subtitle:Column
            (
              children:
              [
                Text(list[i]['lname']),
                Text(list[i]['course']),


              ],
            ) ,

        );
    },
      itemCount:list.length,);
    }
  }



