import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.amberAccent,
          child: Center(
            heightFactor: 5,
            child: Text('Flutter'),
          ),
        ),
      ],
    );
  }
}
