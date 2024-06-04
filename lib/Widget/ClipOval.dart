import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          child: CustomPaint(
            size: Size(80, 80),
            painter: CustomClip(),
            child: Container(
              width: 80,
              height: 80,
              color: Colors.amberAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.transparent;
    canvas.drawOval(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
