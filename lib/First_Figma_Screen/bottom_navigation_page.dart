import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wheather_figma/First_Figma_Screen/screen3.dart';
import 'package:wheather_figma/First_Figma_Screen/second_screen.dart';

import 'first_screen.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {

  int _currentindex= 0;
  final bodies = [
    weatherforecasting(),
    FavouriteScreen(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bodies.elementAt(_currentindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.cloud_outlined), label: 'Weather'),
          BottomNavigationBarItem(icon: Transform.rotate(angle: 5.5,
          child: Icon(Icons.send)), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.tune), label: 'Settings'),
        ],
      ),
    );
  }
}
