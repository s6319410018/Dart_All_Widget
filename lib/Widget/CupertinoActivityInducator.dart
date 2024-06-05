import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatefulWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  State<CupertinoActivityIndicatorWidget> createState() =>
      _CupertinoActivityIndicatorWidgetState();
}

class _CupertinoActivityIndicatorWidgetState
    extends State<CupertinoActivityIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Activity Indicator'),
      ),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
