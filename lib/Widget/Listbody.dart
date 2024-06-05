import 'package:flutter/material.dart';

class ListBodyWidget extends StatelessWidget {
  const ListBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: const [
        Text('Widget 1'),
        Text('Widget 2'),
        Text('Widget 3'),
      ],
    );
  }
}
