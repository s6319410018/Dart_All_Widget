import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<int> items = List.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(items[index].toString()),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Item ${items[index]} dismissed')),
                );
              },
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              child: ListTile(
                title: Text('Item ${items[index]}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
