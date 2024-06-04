import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key});

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.amberAccent,
          radius: 55,
          backgroundImage: AssetImage("assets/images/4549.jpg"),
          child: Text('Pattarapong'),
        ),
      ),
    );
  }
}
