import 'package:flutter/material.dart';

import 'details.dart';

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
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)
            )));


    },
      itemCount:list.length,);
    }
  }



