import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatefulWidget {
  const InteractiveViewerWidget({super.key});

  @override
  State<InteractiveViewerWidget> createState() =>
      InteractiveViewerWidgetState();
}

class InteractiveViewerWidgetState extends State<InteractiveViewerWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Mapp',
            ),
          ),
        ),
      ),
    );
  }
}
