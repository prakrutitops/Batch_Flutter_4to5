import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: LoginPage());
  }

}

class LoginPage extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();

}

class LoginState extends State<LoginPage>
{
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login With Gmail"),actions:
        [
          IconButton(onPressed: ()async
          {
            await _googleSignIn.signOut();

          }, icon:Icon(Icons.logout))
        ],
        ),
        body: Center
          (

              child: ElevatedButton(
                onPressed: ()
                {
                  _handleSignIn(context);

                }, child: Text("Gmail Login"),),
          ),
      );
  }

  Future<void> _handleSignIn(BuildContext context) async
  {
    try
    {
        GoogleSignInAccount ? googleaccount = await _googleSignIn.signIn();

        if(googleaccount!=null)
        {
          final GoogleSignInAuthentication googleAuth = await googleaccount.authentication;

          final accessToken = googleAuth.accessToken;
          final idToken = googleAuth.idToken;

          print('Access Token: $accessToken');
          print('ID Token: $idToken');

            if(accessToken!=null)
            {
                print("Name is :"+googleaccount.displayName.toString());
                print("Name is :"+googleaccount.email.toString());
                print("Name is :"+googleaccount.photoUrl.toString());
            }
        }
    }
    catch(e)
    {
      print(e);
    }


  }

}
