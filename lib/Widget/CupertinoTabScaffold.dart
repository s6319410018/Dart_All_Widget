import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabScaffoldWidget extends StatefulWidget {
  const CupertinoTabScaffoldWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoTabScaffoldWidget> createState() =>
      _CupertinoTabScaffoldWidgetState();
}

class _CupertinoTabScaffoldWidgetState
    extends State<CupertinoTabScaffoldWidget> {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: items,
          ),
          tabBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(color: Colors.red, child: Text("page one"));
            } else if (index == 1) {
              return Container(color: Colors.green, child: Text("page two"));
            } else {
              return Container(color: Colors.blue, child: Text("page three"));
            }
          },
        ),
      ),
    );
  }
}
