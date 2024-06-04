import 'package:flutter/material.dart';

class BottomNavigationBarWiget extends StatefulWidget {
  const BottomNavigationBarWiget({super.key});

  @override
  State<BottomNavigationBarWiget> createState() =>
      _BottomNavigationBarWigetState();
}

class _BottomNavigationBarWigetState extends State<BottomNavigationBarWiget> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (int newindex) {
          setState(() {
            _currentIndex = newindex;
          });
        },
      ),
    );
  }
}
