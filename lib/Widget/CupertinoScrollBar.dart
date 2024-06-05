import 'package:flutter/material.dart';

class CupertinoScrollBarWidget extends StatefulWidget {
  const CupertinoScrollBarWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoScrollBarWidget> createState() =>
      _CupertinoScrollBarWidgetState();
}

class _CupertinoScrollBarWidgetState extends State<CupertinoScrollBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino ScrollBar Example'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Center(
              child: Text('Item $index'),
            );
          },
        ),
        thickness: 6.0,
        trackVisibility: true,
        thumbVisibility: true,
        showTrackOnHover: true,
      ),
    );
  }
}
