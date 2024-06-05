import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetActionWidget extends StatefulWidget {
  const CupertinoActionSheetActionWidget({super.key});

  @override
  State<CupertinoActionSheetActionWidget> createState() =>
      _CupertinoActionSheetActionWidgetState();
}

class _CupertinoActionSheetActionWidgetState
    extends State<CupertinoActionSheetActionWidget> {
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text('Title'),
        message: Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: Text('Action 1'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Action 2'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('Cancel'),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Action Sheet'),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text('Show Action Sheet'),
          onPressed: () => _showActionSheet(context),
        ),
      ),
    );
  }
}
