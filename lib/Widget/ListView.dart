import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text('Flutter '),
            tileColor: Colors.orangeAccent,
            onTap: () {},
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.white,
        ),
      ),
    );
  }
}
