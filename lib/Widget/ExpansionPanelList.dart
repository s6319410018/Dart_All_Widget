import 'package:flutter/material.dart';

class ExpansionPanelListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionPanelList Example',
      home: ExpansionPanelListDemo(),
    );
  }
}

class ExpansionPanelItem {
  final String headerText;
  bool isExpanded;

  ExpansionPanelItem({required this.headerText, this.isExpanded = false});
}

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  final List<ExpansionPanelItem> _expansionPanelItems = [
    ExpansionPanelItem(
      headerText: 'Panel 1',
    ),
    ExpansionPanelItem(
      headerText: 'Panel 2',
    ),
  ];

  void _togglePanel(int index) {
    setState(() {
      _expansionPanelItems[index].isExpanded =
          !_expansionPanelItems[index].isExpanded;
    });
  }

  void _deletePanel(int index) {
    setState(() {
      _expansionPanelItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList Example'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            _togglePanel(index);
          },
          children: _expansionPanelItems
              .map<ExpansionPanel>((ExpansionPanelItem item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerText),
                );
              },
              body: ListTile(
                title: Text('Content of ${item.headerText}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    _deletePanel(_expansionPanelItems.indexOf(item));
                  },
                  child: Text('Delete Panel'),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: Expand the first panel when the button is clicked
          _togglePanel(0);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
