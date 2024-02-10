import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();


}
class LoginState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Login Page"),),

      body: SingleChildScrollView(
        child: Center(
        
            child: Column(
        
              children: [
        
                TextField(decoration: InputDecoration(label:Text("Enter Your Name")),),
        
                TextField(decoration: InputDecoration(label:Text("Enter Your Password")),),
        
                SizedBox(height: 50),
        
                ElevatedButton(onPressed: ()
                {
        
        
        
        
                }, child: Text("Login"))
        
                ,TextField(decoration: InputDecoration(label:Text("Enter Your Name")),),
        
                TextField(decoration: InputDecoration(label:Text("Enter Your Password")),),
        
                SizedBox(height: 50),
                TextField(decoration: InputDecoration(label:Text("Enter Your Name")),),
        
                TextField(decoration: InputDecoration(label:Text("Enter Your Password")),),
        
                SizedBox(height: 50),
                TextField(decoration: InputDecoration(label:Text("Enter Your Name")),),
        
                TextField(decoration: InputDecoration(label:Text("Enter Your Password")),),
        
                SizedBox(height: 50),
        
              ],
        
            ),
        
        ),
      ),
    );
  }

}