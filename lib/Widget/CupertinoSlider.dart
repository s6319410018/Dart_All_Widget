import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({super.key});

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _CurrentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(_CurrentValue.toString()),
          SizedBox(
            width: double.infinity,
          ),
          CupertinoSlider(
            value: _CurrentValue,
            min: 0,
            max: 100,
            divisions: 10,
            onChanged: (Selectedvalue) {
              setState(() {
                _CurrentValue = Selectedvalue;
              });
            },
          ),
        ],
      ),
    );
  }
}
