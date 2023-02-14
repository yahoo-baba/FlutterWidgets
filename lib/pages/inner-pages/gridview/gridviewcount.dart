import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class GridViewCount extends StatelessWidget {
  // const GridViewCount({super.key});

  List items = [
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
    'https://picsum.photos/300/300',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView.Count Widget'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          // ),
          children: List.generate(
              items.length, (index) => Image.network(items[index])),
        ));
  }
}
