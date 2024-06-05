import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage Example'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/placeholder.png', // Placeholder image asset
          image: 'https://example.com/image.jpg', // Actual image URL
          fit: BoxFit.cover,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
