import 'package:flutter/material.dart';

class FractionalTranslationWidget extends StatelessWidget {
  const FractionalTranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.orangeAccent,
            height: 100,
            width: 100,
          ),
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.redAccent,
            height: 100,
            width: 100,
          ),
        ),
        FractionalTranslation(
          translation: const Offset(0, -2),
          child: Container(
            color: Colors.black,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
