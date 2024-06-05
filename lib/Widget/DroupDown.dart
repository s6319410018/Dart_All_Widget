import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: _selectedItem,
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
              print(_selectedItem);
            });
          },
          items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
