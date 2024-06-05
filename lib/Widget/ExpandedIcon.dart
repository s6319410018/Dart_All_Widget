import 'package:flutter/material.dart';

class ExpandedIconWidget extends StatefulWidget {
  const ExpandedIconWidget({Key? key})
      : super(key: key); // Fixed the constructor

  @override
  State<ExpandedIconWidget> createState() => _ExpandedIconWidgetState();
}

class _ExpandedIconWidgetState extends State<ExpandedIconWidget> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.orangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Title',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              ExpandIcon(
                isExpanded: _isExpanded,
                color: Colors.white,
                expandedColor: Colors.black,
                onPressed: (bool isExpanded) {
                  setState(() {
                    _isExpanded = !isExpanded;
                  });
                },
              ),
            ],
          ),
        ),
        if (_isExpanded)
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Flutter Mapp'),
          ),
      ],
    );
  }
}
