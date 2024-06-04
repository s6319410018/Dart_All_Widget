import 'package:flutter/material.dart';

class AnimetedPositionedWidget extends StatefulWidget {
  const AnimetedPositionedWidget({super.key});

  @override
  State<AnimetedPositionedWidget> createState() =>
      _AnimetedPositionedWidgetState();
}

class _AnimetedPositionedWidgetState extends State<AnimetedPositionedWidget> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: _selected ? 200.0 : 50,
              height: _selected ? 50.0 : 200,
              top: _selected ? 50.0 : 150,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
