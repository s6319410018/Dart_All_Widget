import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  @override
  _ExpansionTileWidgetState createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile Widget Example'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Expansion Tile'),
            leading: Icon(Icons.arrow_drop_down),
            backgroundColor: Colors.grey[200],
            collapsedBackgroundColor: Colors.grey[300],
            onExpansionChanged: (expanded) {
              setState(() {
                _isExpanded = expanded;
              });
            },
            children: [
              ListTile(
                title: Text('Sub Item 1'),
                onTap: () {
                  // Action for Sub Item 1
                },
              ),
              ListTile(
                title: Text('Sub Item 2'),
                onTap: () {
                  // Action for Sub Item 2
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            _isExpanded ? 'Expanded' : 'Collapsed',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
