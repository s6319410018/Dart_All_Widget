import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaselineWidget extends StatefulWidget {
  const BaselineWidget({super.key});

  @override
  State<BaselineWidget> createState() => _BaselineWidgetState();
}

class _BaselineWidgetState extends State<BaselineWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
