import 'package:flutter/material.dart';

class GridEx extends StatefulWidget
{
  const GridEx({super.key});

  @override
  State<GridEx> createState() => _GridExState();
}

class _GridExState extends State<GridEx>
{
  List<String> images =
  [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("GridView Example"),),
    body:Container
      (

      padding: EdgeInsets.all(12.0),
      child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 8.0
            ),

          itemBuilder: (BuildContext context,int index)
          {
            return Image.network(images[index]);
          }),


    )


      );
  }
}
