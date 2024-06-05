import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.amberAccent,
            ),
            Divider(
              color: Colors.black,
              height: 30,
              thickness: 5,
              indent: 20,
              endIndent: 40,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
