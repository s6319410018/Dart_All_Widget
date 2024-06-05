import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoSegmentedControlWidget> createState() =>
      _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  String? _currentText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50),
          CupertinoSegmentedControl(
            onValueChanged: (String value) {
              setState(() {
                _currentText = value;
              });
            },
            children: {
              "Flutter": Container(
                color: _currentText == "Flutter"
                    ? Colors.orangeAccent
                    : Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('Flutter'),
              ),
              "Mapp": Container(
                color:
                    _currentText == "Mapp" ? Colors.orangeAccent : Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('Mapp'),
              ),
              "Youtube": Container(
                color: _currentText == "Youtube"
                    ? Colors.orangeAccent
                    : Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('Youtube'),
              ),
            },
          ),
          SizedBox(height: 50),
          // Conditionally render containers based on _currentText
          if (_currentText == "Flutter")
            Container(
              color: Colors.green, // Example color
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Text('Flutter Content'),
            ),
          if (_currentText == "Mapp")
            Container(
              color: Colors.blue, // Example color
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Text('Mapp Content'),
            ),
          if (_currentText == "Youtube")
            Container(
              color: Colors.red, // Example color
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Text('Youtube Content'),
            ),
        ],
      ),
    );
  }
}
