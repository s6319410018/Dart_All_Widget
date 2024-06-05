import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) => GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Flutter'),
            trailing: Icon(
              Icons.menu,
            ),
          ),
          child: Image.asset(
            'assets/images/4549.jpg',
            fit: BoxFit.cover,
          ),
          footer: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
