import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchTextFieldWidget extends StatelessWidget {
  CupertinoSearchTextFieldWidget({Key? key}) : super(key: key);

  final TextEditingController _textEditingController =
      TextEditingController(text: 'Flutter');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemOrange,
      padding: EdgeInsets.all(10),
      child: Center(
        child: CupertinoSearchTextField(
          controller: _textEditingController,
        ),
      ),
    );
  }
}
