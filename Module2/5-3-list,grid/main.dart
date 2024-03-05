import 'package:flutter/material.dart';

import 'grid1.dart';
import 'list2.dart';
import 'list3.dart';

void main()
{
  runApp(MaterialApp(home:GridEx()));
}
class ListEx1 extends StatefulWidget
{
  const ListEx1({super.key});

  @override
  State<ListEx1> createState() => _ListEx1State();
}

class _ListEx1State extends State<ListEx1>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Listview Example"),),
      body: ListView
        (

            children:
            [


                Image.network("https://t4.ftcdn.net/jpg/02/86/66/65/360_F_286666515_oWoAhkS6AeeU5PBJGF9y8Jlv3nLHFIJu.jpg"),
                Image.network("https://t4.ftcdn.net/jpg/02/86/66/65/360_F_286666515_oWoAhkS6AeeU5PBJGF9y8Jlv3nLHFIJu.jpg"),
                Image.network("https://t4.ftcdn.net/jpg/02/86/66/65/360_F_286666515_oWoAhkS6AeeU5PBJGF9y8Jlv3nLHFIJu.jpg")


            ],


      ),

    );
  }
}
