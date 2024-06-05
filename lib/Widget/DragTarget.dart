import 'package:flutter/material.dart';

class DragTargetWidget extends StatefulWidget {
  const DragTargetWidget({Key? key}) : super(key: key);

  @override
  State<DragTargetWidget> createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable<Color>(
              data: Colors.yellow,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow,
                child: Center(
                  child: Text('Box'),
                ),
              ),
              feedback: Container(
                width: 150.0,
                height: 150.0,
                color: Colors.yellow.withOpacity(0.5),
                child: Center(
                  child: Text('Box'),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.grey,
                child: Center(
                  child: Text('Box'),
                ),
              ),
            ),
            DragTarget<Color>(
              onAccept: (Color color) {
                setState(() {
                  caughtColor = color; // Update state using setState
                });
              },
              builder: (BuildContext context, List<Color?> accepted,
                  List<dynamic> rejected) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                  child: Center(
                    child: Text('ฺBox two'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
