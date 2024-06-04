import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              child: const FlutterLogo(size: 100.0),
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: _controller,
              child: const FlutterLogo(size: 100.0),
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..scale(0.1 + _controller.value * 1.0),
                  alignment: Alignment.center,
                  child: child,
                );
              },
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: _controller,
              child: const FlutterLogo(size: 100.0),
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..translate(
                        100.0 * math.sin(_controller.value * 2.0 * math.pi)),
                  alignment: Alignment.center,
                  child: child,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
