import 'package:flutter/cupertino.dart';

class CupertinoAppWidget extends StatelessWidget {
  const CupertinoAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
      ),
      home: Text('Flutter'),
    );
  }
}
