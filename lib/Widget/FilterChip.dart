import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  List<String> _filters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FilterChip Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            children: List<Widget>.generate(
              5,
              (int index) => FilterChip(
                label: Text('Filter ${index + 1}'),
                selected: _filters.contains('Filter ${index + 1}'),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      _filters.add('Filter ${index + 1}');
                    } else {
                      _filters.remove('Filter ${index + 1}');
                    }
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Selected Filters:'),
          SizedBox(height: 5),
          Text(_filters.join(', ')),
        ],
      ),
    );
  }
}
