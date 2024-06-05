import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentesControlWidget extends StatefulWidget {
  const CupertinoSlidingSegmentesControlWidget({super.key});

  @override
  State<CupertinoSlidingSegmentesControlWidget> createState() =>
      _CupertinoSlidingSegmentesControlWidgetState();
}

class _CupertinoSlidingSegmentesControlWidgetState
    extends State<CupertinoSlidingSegmentesControlWidget> {
  @override
  int? _Sliding = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.amberAccent,
          height: 300,
          width: 200,
          child: Column(
            children: [
              CupertinoSlidingSegmentedControl(
                children: {
                  0: Text('Text 0'),
                  1: Text('Text 1'),
                  2: Text('Text 2'),
                },
                groupValue: _Sliding,
                onValueChanged: (int? newValue) {
                  setState(() {
                    _Sliding = newValue;
                  });
                },
              ),
              if (_Sliding == 0)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double
                        .infinity, // This line makes the inner container expand to fill the outer container
                    child: Text('Content 1'),
                  ),
                ),
              if (_Sliding == 1)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    child: Text('Content 2'),
                  ),
                ),
              if (_Sliding == 2)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    child: Text('Content 3'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
