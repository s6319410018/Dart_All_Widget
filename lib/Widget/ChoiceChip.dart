import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool _isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
          label: Text('ChoiceChip'),
          selected: _isselected,
          selectedColor: Colors.orangeAccent,
          onSelected: (newState) {
            setState(() {
              _isselected = newState;
            });
          },
        ),
      ),
    );
  }
}
