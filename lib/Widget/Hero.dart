import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        trailing: const Hero(
          tag: 'tag-1',
          child: Icon(Icons.person),
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        ),
        title: const Text('Click on me'),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'tag-1',
              child: Container(
                color: Colors.orangeAccent,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
