import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          body: Login() ,

      );
  }

}

class Login extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();

}
class LoginState extends State<Login>
{

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    return Form(

      // appBar: AppBar(title: Text("Login Form"),backgroundColor: Colors.blue,),
      // body: Center
      //   (
          key: _formKey,
          child: Column(

              children:
              [

                TextFormField(
                  decoration: InputDecoration
                    (
                    icon: Icon(Icons.phone),
                    hintText: 'Enter a phone number',
                    labelText: "Phone",
                  ),
                  validator: (value)
                  {
                      if(value!.isEmpty)
                      {
                        return 'Please enter Mobile Number';
                      }
                      return null;
                  },),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter a password',
                      labelText: "Password"
                  ),
                  obscureText: true,
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Please enter Password';
                    }
                    return null;
                  },),
                  SizedBox(height: 35),
                ElevatedButton(onPressed: ()
                {

                   if(_formKey.currentState!.validate())
                   {
                       print("Login done");



                   }
                   else
                   {
                    print("Login Fail");
                   }


                }, child: Text("Login"))

              ],

          ),

       // ),
    );
  }

}