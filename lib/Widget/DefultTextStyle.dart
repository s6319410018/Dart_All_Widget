import 'package:flutter/material.dart';

class DefultTextStlieWidget extends StatelessWidget {
  const DefultTextStlieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Flutter',
          style: TextStyle(color: Colors.black),
        ),
        DefaultTextStyle(
          style: TextStyle(color: Colors.amber, fontSize: 36),
          child: Center(
            child: Column(
              children: [
                Text('Flutter'),
                Text('Flutter'),
                Text('Flutter'),
                Text(
                  'Flutter',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
