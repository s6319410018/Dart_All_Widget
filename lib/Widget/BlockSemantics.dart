import 'package:flutter/material.dart';

class BlockSemanticsWidget extends StatefulWidget {
  const BlockSemanticsWidget({super.key});

  @override
  State<BlockSemanticsWidget> createState() => _BlockSemanticsWidgetState();
}

class _BlockSemanticsWidgetState extends State<BlockSemanticsWidget> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isShow = true;
                });
              },
              child: Text('Click'),
            ),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.amberAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('This is a card'),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                isShow = false;
                              });
                            },
                            child: Text('close'))
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    showSemanticsDebugger: true,
    debugShowCheckedModeBanner: false,
    title: 'Flutter Widget',
    theme: ThemeData(
        brightness: Brightness.dark, scaffoldBackgroundColor: Colors.blueGrey),
    home: BlockSemanticsWidget(),
  ));
}
