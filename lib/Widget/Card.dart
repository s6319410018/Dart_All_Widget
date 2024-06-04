import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 20,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text('This is Flutter Card'),
                TextButton(
                  onPressed: () {},
                  child: Text('Press'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
