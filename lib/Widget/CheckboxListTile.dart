import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({super.key});

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          activeColor: Colors.black,
          checkColor: Colors.amberAccent,
          tileColor: Colors.blue,
          subtitle: Text('This is Subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text('CheckBox List Tile'),
          tristate: true,
          value: _ischecked,
          onChanged: (bool? newValue) {
            setState(
              () {
                _ischecked = newValue ?? false;
              },
            );
          },
        ),
      ),
    );
  }
}
