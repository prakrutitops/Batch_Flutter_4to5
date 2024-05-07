import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants.dart';
import '../bottom_navigation/download/download.dart';
import '../bottom_navigation/home/home.dart';
import '../login/login.dart';

class Front extends StatefulWidget{
  @override
  FrontPage createState() => FrontPage();
}

class FrontPage extends State<Front> {

  late SharedPreferences sharedPreferences;
  String myusername="";

  @override
  void initState() {
    super.initState();
    initial();
  }

  initial() async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    setState(()
    {
      myusername = sharedPreferences.getString('username')!;
    });
  }

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>
  [
     Home(),
     Download(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to E wishes $myusername', style: TextStyle(color: kGold),),
        automaticallyImplyLeading: false,
        backgroundColor: kDarkBrown,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: kGold,
            ),
            onPressed: ()
            {
              sharedPreferences.setBool('ewishes', true);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: kLightGold,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: ('Download'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kGold,
        backgroundColor: kDarkBrown,
        unselectedItemColor: kTerracotta,
        onTap: _onItemTapped,
      ),
    );
  }
}