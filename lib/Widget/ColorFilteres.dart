import 'package:flutter/material.dart';

class ColorFilteresWidget extends StatelessWidget {
  const ColorFilteresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
        child: Image.asset(
          'assets/images/4551.jpg',
          width: 350,
        ),
      ),
    );
  }
}
