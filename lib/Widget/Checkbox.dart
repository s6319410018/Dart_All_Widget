import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              checkColor: Colors.amber,
              value: isChecked,
              onChanged: (newBool) {
                setState(() {
                  isChecked = newBool ?? false;
                });
              },
            ),
            const Text(
              'Remember me',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
