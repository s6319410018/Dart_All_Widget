import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: DemoPainter(),
          child: Text('This is pac-man'),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.black;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 250,
            height: 250),
        0.5, //หมุน
        2 * 3.14 - 1,
        true,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
