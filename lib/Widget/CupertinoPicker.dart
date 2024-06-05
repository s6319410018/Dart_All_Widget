import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({Key? key}) : super(key: key);

  @override
  _CupertinoPickerWidgetState createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Picker Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showPicker(context);
              },
              child: Text('Show Picker'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Selected Item: Item $_selectedItem',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: CupertinoPicker(
            itemExtent: 32.0,
            onSelectedItemChanged: (int index) {
              setState(() {
                _selectedItem =
                    index + 1; // Increment index to match item number
              });
            },
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
        );
      },
    );
  }
}
