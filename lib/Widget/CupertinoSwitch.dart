import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({super.key});

  @override
  State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CupertinoSwitch(
              value: _lights,
              onChanged: (bool selection) {
                setState(() {
                  _lights = selection;
                });
              },
            ),
            Switch(
              value: _lights,
              onChanged: (bool selection) {
                setState(() {
                  _lights = selection;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
