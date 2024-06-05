import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key); // Fix the key parameter

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add functionality here for when Item 1 is tapped
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add functionality here for when Item 2 is tapped
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer(); // Open the drawer
          },
          child: Text('Open Drawer'),
        ),
      ),
    );
  }
}
