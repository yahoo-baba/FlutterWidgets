import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple GridView Widget'),
        ),
        body: GridView(
          // scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
            Image.network('https://picsum.photos/300/300'),
          ],
        ));
  }
}
