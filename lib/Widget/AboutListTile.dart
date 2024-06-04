import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: 'V 1.0.0',
          aboutBoxChildren: [Text('This is a text created by Flutter')],
        ),
      ),
    );
  }
}
