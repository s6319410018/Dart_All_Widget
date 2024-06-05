import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Example'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Flexible Widget 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Flexible Widget 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'Flexible Widget 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
