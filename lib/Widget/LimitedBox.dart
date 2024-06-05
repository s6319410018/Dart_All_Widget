import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatefulWidget {
  const LimitedBoxWidget({super.key});

  @override
  State<LimitedBoxWidget> createState() => _LimitedBoxWidgetState();
}

class _LimitedBoxWidgetState extends State<LimitedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LimitedBox(
          maxHeight: 50,
          //maxWidth: 300,
          child: Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
              ),
              title: Text('Flutter Mapp'),
            ),
          ),
        ),
      ),
    );
  }
}
