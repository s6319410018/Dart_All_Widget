import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  State<IconButtonWidget> createState() => _Widget118State();
}

class _Widget118State extends State<IconButtonWidget> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box),
            iconSize: 50,
            onPressed: () {
              setState(() {
                click += 1;
              });
            },
            //with many other arguments
          ),
          Text(
            'Click $click',
            style: const TextStyle(
              fontSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
