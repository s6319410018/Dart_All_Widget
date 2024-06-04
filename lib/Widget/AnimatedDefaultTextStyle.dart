import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
                child: Text('Flutter'),
                style: TextStyle(
                    fontSize: _fontsize,
                    color: _color,
                    fontWeight: FontWeight.bold),
                duration: Duration(milliseconds: 300)),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _fontsize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.green;
                  _first = !_first;
                });
              },
              child: Text('Switch'))
        ],
      ),
    );
  }
}
