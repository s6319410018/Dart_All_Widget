import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _size = _size == 300 ? 100 : 300;
                });
              },
              child: Container(
                color: Colors.white,
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
