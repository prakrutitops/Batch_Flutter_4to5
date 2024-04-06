import 'package:flutter/material.dart';
import 'package:jsonregisterlogin/main.dart';
import 'package:http/http.dart' as http;
class SignupScreen extends StatefulWidget
{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
{

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Screen"),),
      body: Container
        (
          margin: EdgeInsets.all(20.0),
          child: Column
            (
              children:
              [

                TextFormField(controller: fname,decoration: InputDecoration(hintText: "Enter Your Firstname"),),
                SizedBox(height: 10),
                TextFormField(controller:lname,decoration: InputDecoration(hintText: "Enter Your Lastname"),),
                SizedBox(height: 10),
                TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Your Email"),),
                SizedBox(height: 10),
                TextFormField(controller:mobile,decoration: InputDecoration(hintText: "Enter Your Mobile"),),
                SizedBox(height: 10),
                TextFormField(controller: password,obscureText:true,decoration: InputDecoration(hintText: "Enter Your Password"),),
                SizedBox(height: 10),
                TextFormField(controller:confirmpassword,obscureText:true,decoration: InputDecoration(hintText: "Enter Your Confirm Password"),),
                SizedBox(height: 10),
                ElevatedButton(onPressed: ()
                {
                   String p1 = password.text.toString();
                   String c1 = confirmpassword.text.toString();
                  if(p1==c1)
                  {
                    insertdata();

                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                  else
                  {
                    final snackBar = SnackBar(
                      content: const Text('Password and Confirm password are not same'),

                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }

                }, child: Text("Sign up")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                }, child: Text("Do You want to Login?"))
              ],
            ),
        ),
    );
  }

  void insertdata()
  {

    var url = Uri.parse("https://chaitalijivani.000webhostapp.com/API/register.php");

    http.post(url,body:
    {

      "fname":fname.text.toString(),
      "lname":lname.text.toString(),
      "email":email.text.toString(),
      "mobile":mobile.text.toString(),
      "password":password.text.toString(),

    });
  }
}
