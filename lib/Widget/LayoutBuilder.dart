import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({super.key});

  @override
  State<LayoutBuilderWidget> createState() => LayoutBuilderyWidgetState();
}

class LayoutBuilderyWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Center(
            child: Image.asset(
              'assets/images/4549.jpg',
            ),
          );
        } else {
          return const Center(
            child: Text('Screen under 600'),
          );
        }
      },
    );
  }
}
