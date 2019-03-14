import 'package:flutter/material.dart';
import './home/home.dart';
import './home/business.dart';
import './home/school.dart';

class Pzhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PzhomeState();
}

class PzhomeState extends State<Pzhome> {
  final _bottomNavigationColor = Colors.blue;
  int _selectedIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    list..add(HomeScreen())..add(SchoolScreen())..add(BusScreen());
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
