import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opaciLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opaciLevel,
              duration: Duration(seconds: 2),
              child: FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    opaciLevel = opaciLevel == 0 ? 1.0 : 0.0;
                  });
                },
                child: Text("Fade Logo"))
          ],
        ),
      ),
    );
  }
}
