import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Context Menu Example'),
      ),
      child: Center(
        child: CupertinoContextMenu(
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action 1'),
              onPressed: () {
                print('Action 1 pressed');
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action 2'),
              onPressed: () {
                print('Action 2 pressed');
                Navigator.pop(context);
              },
            ),
          ],
          child: Container(
            color: CupertinoColors.systemGrey,
            padding: EdgeInsets.all(20),
            child: Text(
              'Long press to show context menu',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
