import 'package:flutter/material.dart';

class DraggableScrollableWidget extends StatelessWidget {
  const DraggableScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.25,
          maxChildSize: 1.0,
          builder: (context, scrollController) {
            return Container(
              color: Colors.amberAccent,
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
