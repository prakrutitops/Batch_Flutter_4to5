/*
import 'package:flutter/material.dart';
import 'package:listandgrid/model.dart';

class List2 extends StatefulWidget {
  const List2({super.key});

  @override
  State<List2> createState() => _List2State();
}

class _List2State extends State<List2>
{

    final List items=[

      Model(image: "https://1000logos.net/wp-content/uploads/2017/02/Facebook-Logosu.png",title: "Title 1",subtitle: "Sub Title 1"),
      Model(image: "https://img.freepik.com/premium-vector/instagram-app-icon-social-media-logo-vector-illustration_277909-403.jpg",title: "Title 2",subtitle: "Sub Title 2"),
      Model(image: "https://www.shutterstock.com/image-photo/valencia-spain-march-05-2017-260nw-601425683.jpg",title: "Title 3",subtitle: "Sub Title 3"),
      Model(image: "https://static-00.iconduck.com/assets.00/pinterest-icon-512x512-3vn0ggs9.png",title: "Title 4",subtitle: "Sub Title 4"),
      Model(image: "https://cdn-icons-png.flaticon.com/512/281/281769.png",title: "Title 5",subtitle: "Sub Title 5"),
      Model(image: "https://cdn-icons-png.flaticon.com/512/281/281769.png",title: "Title 5",subtitle: "Sub Title 5"),
      Model(image: "https://1000logos.net/wp-content/uploads/2017/02/Facebook-Logosu.png",title: "Title 1",subtitle: "Sub Title 1"),
      Model(image: "https://img.freepik.com/premium-vector/instagram-app-icon-social-media-logo-vector-illustration_277909-403.jpg",title: "Title 2",subtitle: "Sub Title 2"),
      Model(image: "https://www.shutterstock.com/image-photo/valencia-spain-march-05-2017-260nw-601425683.jpg",title: "Title 3",subtitle: "Sub Title 3"),
      Model(image: "https://static-00.iconduck.com/assets.00/pinterest-icon-512x512-3vn0ggs9.png",title: "Title 4",subtitle: "Sub Title 4"),
      Model(image: "https://cdn-icons-png.flaticon.com/512/281/281769.png",title: "Title 5",subtitle: "Sub Title 5"),
      Model(image: "https://cdn-icons-png.flaticon.com/512/281/281769.png",title: "Title 5",subtitle: "Sub Title 5")

    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Example"),),
      body: ListView.builder(
          itemBuilder: (BuildContext context,int index)
          {
              //design
              return ListTile
                (
                  leading: Image.network(items[index].image,width:50,height: 150),
                  title: Text(items[index].title),
                  subtitle: Text(items[index].subtitle),


              );


          },
          itemCount: items.length,

          ),

    );
  }
}
*/
