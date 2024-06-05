import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.orange[100 * (index % 9)],
                child: Text("Grid Item $index"),
              );
            },
            childCount: 50, // Define the number of grid items
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0, // Spacing along the main axis
            crossAxisSpacing: 10.0, // Spacing along the cross axis
            childAspectRatio: 4.0, // Aspect ratio of each grid item
          ),
        ),
      ],
    );
  }
}
