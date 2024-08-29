import 'package:flutter/material.dart';
import 'package:snap/screen/profile.dart';
import 'package:snap/screen/video.dart';

import 'camera.dart';
import 'chat.dart';
import 'location.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [

    Location(),
     Chat(),
    Camera(),
     Profile(),
     Video()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue, // Color for selected icon and label
        unselectedItemColor:
        Colors.white, // Color for unselected icon and label
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: '',
          ),
        ],
      ),
    );
  }
}
