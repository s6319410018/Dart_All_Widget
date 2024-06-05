import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue, // Text color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'ElevateButton',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
