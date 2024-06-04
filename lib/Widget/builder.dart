import 'package:flutter/material.dart';

class BuilderWidget extends StatefulWidget {
  const BuilderWidget({super.key});

  @override
  State<BuilderWidget> createState() => _BuilderWidgetState();
}

class _BuilderWidgetState extends State<BuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}

MyWidget() => Builder(builder: (context) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Card(
          color: Colors.blue,
          child: Text(
            'Text with Them',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ]);
    });
