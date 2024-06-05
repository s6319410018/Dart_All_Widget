import 'package:flutter/material.dart';

class FlutterlogoWidget extends StatefulWidget {
  const FlutterlogoWidget({super.key});

  @override
  State<FlutterlogoWidget> createState() => _FlutterlogoWidgetState();
}

class _FlutterlogoWidgetState extends State<FlutterlogoWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        size: 300,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.blue,
      ),
    );
  }
}
