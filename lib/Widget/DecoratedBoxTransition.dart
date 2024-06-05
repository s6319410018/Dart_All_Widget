import 'package:flutter/material.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  const DecoratedBoxTransitionWidget({super.key});

  @override
  State<DecoratedBoxTransitionWidget> createState() =>
      _AnimatedContainersWidgetState();
}

class _AnimatedContainersWidgetState extends State<DecoratedBoxTransitionWidget>
    with TickerProviderStateMixin {
  // Controllers for each animation
  late final AnimationController _decorationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final AnimationController _colorController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final AnimationController _scaleController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final AnimationController _rotationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final AnimationController _opacityController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  late final AnimationController _positionController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

  // Tweens for each animation
  final DecorationTween _decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          spreadRadius: 2.0,
          offset: Offset(0, 6.0),
        )
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ),
  );

  final ColorTween _colorTween = ColorTween(
    begin: Colors.white,
    end: Colors.blue,
  );

  late final Animation<double> _scaleAnimation = Tween<double>(
    begin: 1.0,
    end: 1.5,
  ).animate(CurvedAnimation(
    parent: _scaleController,
    curve: Curves.easeInOut,
  ));

  late final Animation<double> _rotationAnimation = Tween<double>(
    begin: 0,
    end: 2 * 3.141592653589793,
  ).animate(CurvedAnimation(
    parent: _rotationController,
    curve: Curves.easeInOut,
  ));

  late final Animation<double> _opacityAnimation = Tween<double>(
    begin: 1.0,
    end: 0.0,
  ).animate(CurvedAnimation(
    parent: _opacityController,
    curve: Curves.easeInOut,
  ));

  late final Animation<Offset> _positionAnimation = Tween<Offset>(
    begin: Offset(0, 0),
    end: Offset(0, 1),
  ).animate(CurvedAnimation(
    parent: _positionController,
    curve: Curves.easeInOut,
  ));

  @override
  void dispose() {
    _decorationController.dispose();
    _colorController.dispose();
    _scaleController.dispose();
    _rotationController.dispose();
    _opacityController.dispose();
    _positionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBoxTransition(
                  decoration: _decorationTween.animate(_decorationController),
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(20),
                    child: FlutterLogo(size: 50),
                  ),
                ),
                // Container with color transition
                AnimatedBuilder(
                  animation: _colorController,
                  builder: (context, child) {
                    return Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(20),
                      color: _colorTween.evaluate(_colorController),
                      child: FlutterLogo(size: 50),
                    );
                  },
                ),
                // Container with scale transition
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(20),
                    child: FlutterLogo(size: 50),
                  ),
                ),
                // Container with rotation transition
                RotationTransition(
                  turns: _rotationAnimation,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(20),
                    child: FlutterLogo(size: 50),
                  ),
                ),
                // Container with opacity transition
                FadeTransition(
                  opacity: _opacityAnimation,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(20),
                    child: FlutterLogo(size: 50),
                  ),
                ),
                // Container with position transition
                SlideTransition(
                  position: _positionAnimation,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(20),
                    child: FlutterLogo(size: 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
