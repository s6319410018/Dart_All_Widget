import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildAlignColumnWithDivider(
                      context, Alignment.bottomCenter, 'bottomCenter'),
                  buildAlignColumnWithDivider(
                      context, Alignment.bottomLeft, 'bottomLeft'),
                  buildAlignColumnWithDivider(
                      context, Alignment.bottomRight, 'bottomRight'),
                  buildAlignColumnWithDivider(
                      context, Alignment.center, 'center'),
                  buildAlignColumnWithDivider(
                      context, Alignment.centerLeft, 'centerLeft'),
                  buildAlignColumnWithDivider(
                      context, Alignment.centerRight, 'centerRight'),
                  buildAlignColumnWithDivider(
                      context, Alignment.topCenter, 'topCenter'),
                  buildAlignColumnWithDivider(
                      context, Alignment.topLeft, 'topLeft'),
                  buildAlignColumnWithDivider(
                      context, Alignment.topRight, 'topRight'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAlignColumnWithDivider(
      BuildContext context, Alignment alignment, String text) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildAlignColumn(context, alignment, text),
          VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget buildAlignColumn(
      BuildContext context, Alignment alignment, String text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Text(text),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.blue.shade100,
            child: Align(
              alignment: alignment,
              child: FlutterLogo(size: 60),
            ),
          ),
          Divider(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
