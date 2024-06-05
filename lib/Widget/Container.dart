import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        color: Colors.orange,
        child: Text("Flutter"),
        constraints: BoxConstraints.expand(height: 200),
        transform: Matrix4.rotationZ(0.2),
      ),
    );
  }
}
