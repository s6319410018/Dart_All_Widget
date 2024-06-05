import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextfieldWidget extends StatelessWidget {
  CupertinoTextfieldWidget({super.key});
  final TextEditingController _textController =
      TextEditingController(text: "Flutter");
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemPink,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: CupertinoTextField(
              controller: _textController,
            ),
          ),
        ),
      ),
    );
  }
}
