import 'package:flutter/material.dart';

class ClipPathWidget extends StatefulWidget {
  const ClipPathWidget({Key? key}) : super(key: key);

  @override
  State<ClipPathWidget> createState() => _ClipPathWidgetState();
}

class _ClipPathWidgetState extends State<ClipPathWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: double.infinity,
          height: 300,
          color: Color.fromARGB(255, 9, 254, 123),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
