import 'package:flutter/material.dart';

class AnimateCrossFadeWidget extends StatefulWidget {
  const AnimateCrossFadeWidget({Key? key});

  @override
  State<AnimateCrossFadeWidget> createState() => _AnimateCrossFadeWidgetState();
}

class _AnimateCrossFadeWidgetState extends State<AnimateCrossFadeWidget> {
  bool _bool = true;

  // รายการรูปภาพที่จะใช้ใน AnimatedCrossFade
  final List<String> imageList = [
    'assets/images/4549.jpg',
    'assets/images/4551.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.amber,
              side: const BorderSide(color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.black),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(imageList[0], width: double.infinity),
            secondChild: Image.asset(imageList[1], width: double.infinity),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
