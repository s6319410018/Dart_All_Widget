import 'package:flutter/material.dart';

class BlockSemanticsWidget extends StatefulWidget {
  const BlockSemanticsWidget({super.key});

  @override
  State<BlockSemanticsWidget> createState() => _BlockSemanticsWidgetState();
}

class _BlockSemanticsWidgetState extends State<BlockSemanticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() {
  runApp(MaterialApp(
    showSemanticsDebugger: true,
    debugShowCheckedModeBanner: false,
    title: '',
  ));
}
