import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({super.key});

  @override
  State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool ignore = false;

  void setIgnoring(bool newValue) {
    setState(() {
      ignore = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setIgnoring(!ignore);
            },
            child: Text(
              ignore ? 'Blocked' : 'All good',
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: ignore ? Colors.red : Colors.green,
            ),
          ),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          ),
        ],
      ),
    );
  }
}
