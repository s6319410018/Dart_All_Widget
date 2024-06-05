import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSerFacewidget extends StatefulWidget {
  const CupertinoPopupSerFacewidget({Key? key})
      : super(key: key); // Corrected constructor syntax

  @override
  State<CupertinoPopupSerFacewidget> createState() =>
      _CupertinoPopupSerFacewidgetState();
}

class _CupertinoPopupSerFacewidgetState
    extends State<CupertinoPopupSerFacewidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text('Click me'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoPopupSurface(
                  // Added parentheses
                  child: Container(
                    color: CupertinoColors.white,
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: CupertinoButton(
                        child: Text('Clase'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
