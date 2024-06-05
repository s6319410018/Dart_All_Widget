import 'package:flutter/material.dart';

class ConsTrainedBoxWidget extends StatelessWidget {
  const ConsTrainedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 900, maxHeight: 350),
          child: Container(
            color: Colors.amberAccent,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
