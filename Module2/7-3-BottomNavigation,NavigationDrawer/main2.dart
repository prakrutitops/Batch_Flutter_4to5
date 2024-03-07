import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget
{
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex=0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('About Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Logout Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),),
      body: Center
        (

        child: _widgetOptions.elementAt(_selectedIndex),


      ),
        bottomNavigationBar: BottomNavigationBar(
          items: [

            BottomNavigationBarItem
              (
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green
              ),
            BottomNavigationBarItem
              (
                icon: Icon(Icons.person),
                label: 'About',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem
              (
                icon: Icon(Icons.logout),
                label: 'Logout',
                backgroundColor: Colors.green
            ),




          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.amber,
          iconSize: 25,
          elevation: 5,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,

        ),


    );
  }

  void _onItemTapped(int value)
  {
    setState(()
    {
      _selectedIndex = value;




    });


  }
}
