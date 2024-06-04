import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animated List Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<int> _items = [];
  int _counter = 0;

  void _addItem() {
    setState(() {
      _counter++;
      _items.insert(0, _counter);
      _listKey.currentState
          ?.insertItem(0, duration: const Duration(seconds: 1));
    });
  }

  void _removeItem(int index) {
    setState(() {
      _listKey.currentState?.removeItem(index, (_, animation) {
        return sizeIt(context, index, animation);
      }, duration: const Duration(milliseconds: 500));
      _items.removeAt(index);
    });
  }

  Widget sizeIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4!;
    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation,
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $_counter', style: textStyle),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List Demo'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return sizeIt(context, index, animation);
              },
            ),
          ),
        ],
      ),
    );
  }
}
