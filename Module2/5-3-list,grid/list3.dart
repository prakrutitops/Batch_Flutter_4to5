import 'package:flutter/material.dart';
import 'package:listandgrid/model.dart';

class List3 extends StatefulWidget
{
  const List3({super.key});

  @override
  State<List3> createState() => _List3State();
}

class _List3State extends State<List3>
{

  final List items=[

    Model(image: "https://1000logos.net/wp-content/uploads/2017/02/Facebook-Logosu.png",title: "Title 1",subtitle: "Sub Title 1",subtitle2: "xyz"),
    Model(image: "https://img.freepik.com/premium-vector/instagram-app-icon-social-media-logo-vector-illustration_277909-403.jpg",title: "Title 2",subtitle: "Sub Title 2",subtitle2: "abc"),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Example"),),
      body: ListView.separated(

        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index)
        {
          return ListTile
            (

           );
        }, itemBuilder: (BuildContext context, int index) {

        return ListTile
          (
            leading: Image.network(items[index].image,width:50,height: 150),
            title: Text(items[index].title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(items[index].subtitle),
                Text(items[index].subtitle2),


              ],

            )

        );

      },

      ),

    );
  }
}
