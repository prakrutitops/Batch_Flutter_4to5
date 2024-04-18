import 'package:firebasefluttercode/test.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {


    final Future<FirebaseApp> _initailization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initailization,
        builder: (context, snapshot) {
          //Something from Firebase
          if (snapshot.hasError)
          {
            print('Something Went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.done)
          {
            return MaterialApp
              (
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                appBarTheme: const AppBarTheme(
                  centerTitle: true,
                ),
              ),
              home: OTPScreen(),
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}

