import 'package:flutter/material.dart';

class ColorredBoxWidget extends StatelessWidget {
  const ColorredBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColoredBox(
          color: Colors.orangeAccent,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
