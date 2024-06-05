import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(
                  'https://via.placeholder.com/150',
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'FittedBox Example',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
