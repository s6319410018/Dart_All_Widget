import 'package:flutter/material.dart';
import 'dart:ui';

class BackdroupFilterWidget extends StatefulWidget {
  const BackdroupFilterWidget({super.key});

  @override
  State<BackdroupFilterWidget> createState() => _BackdroupFilterWidgetState();
}

class _BackdroupFilterWidgetState extends State<BackdroupFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text(
            '0' * 100000,
            style: TextStyle(color: Colors.green),
          ),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  width: 250,
                  height: 250,
                  alignment: Alignment.center,
                  child: Text('Blur'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
