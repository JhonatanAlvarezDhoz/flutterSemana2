import 'package:flutter/material.dart';
import 'package:flutterapp/home/homr.dart';
import 'package:flutterapp/profile/profile.dart';
import 'package:flutterapp/views/list_view_database.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuS createState() => _MenuS();
}

class _MenuS extends State<Menu> {
  int _selectedImdex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    CallFirebase(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedImdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      backgroundColor: Colors.blue.shade200,
      //title: const Text('Car Wash'),
      //),
      body: Center(child: _widgetOptions.elementAt(_selectedImdex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Co
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair_outlined),
            label: 'In-service',
            //backgroundColor:
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'
              //backgroundColor:
              ),
        ],
        currentIndex: _selectedImdex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
