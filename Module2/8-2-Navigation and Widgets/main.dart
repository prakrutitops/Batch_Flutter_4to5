import 'package:flutter/material.dart';
import 'package:myapp12/second.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
            home: FirstPage(),
        );
  }

}
class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar(title: Text("First App"),),
          body: Center(

            child: Column(

                children: [

                    Text("Tasmin"),
                    ElevatedButton(onPressed: ()
                    {
                       //Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()));
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SecondPage()));

                    }, child: Text("Submit"),),
                    Text("Brijesh"),
                    Text("Priyansh"),
                    Text("Dhwami"),
                    Text("Chaitali"),
                    Text("Nikky"),
                    Image.asset("images/err.png",width: 150,height: 150),
                    Image.network("https://logowik.com/content/uploads/images/flutter5786.jpg",width: 150,height: 150)
                ],

            ),



          ),
        );
  }

}
