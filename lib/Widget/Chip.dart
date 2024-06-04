import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: Image.asset("assets/images/4549.jpg"),
          label: Text("Fluter Chip"),
          onDeleted: () {
            debugPrint("Do somthing");
          },
        ),
      ),
    );
  }
}
