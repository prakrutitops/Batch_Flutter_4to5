import 'package:fbinte/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Facebook Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Payment(),
    );
  }
}

class LoginPage extends StatelessWidget
{
  final FacebookLogin facebookLogin = FacebookLogin();

  Future<void> _loginWithFacebook(BuildContext context) async
  {
    final result = await facebookLogin.logIn(customPermissions: ['email']);

    switch (result.status) {
      case FacebookLoginStatus.success:
      // Logged in successfully, access the user's information
        final accessToken = result.accessToken!.token;
        // You can use the accessToken to retrieve user data from Facebook
        // For example, you can use the Graph API to fetch user information
        // More info: https://developers.facebook.com/docs/graph-api
        print('Logged in successfully!');
        break;
      case FacebookLoginStatus.cancel:
      // User cancelled the login process
        print('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
      // Error occurred during login process
        print('Error: ${result.error}');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Login Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _loginWithFacebook(context),
          child: Text('Login with Facebook'),
        ),
      ),
    );
  }
}
