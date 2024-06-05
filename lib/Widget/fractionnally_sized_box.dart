import 'package:flutter/material.dart';

class fractionnally_sized_boxWidget extends StatefulWidget {
  const fractionnally_sized_boxWidget({super.key});

  @override
  State<fractionnally_sized_boxWidget> createState() =>
      _fractionnally_sized_boxWidgetState();
}

class _fractionnally_sized_boxWidgetState
    extends State<fractionnally_sized_boxWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
