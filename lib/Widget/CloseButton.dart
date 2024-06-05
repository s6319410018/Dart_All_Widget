import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CloseButton(
          color: Colors.blue,
          onPressed: () {
            debugPrint("Do Somting");
          },
        ),
      ),
    );
  }
}
