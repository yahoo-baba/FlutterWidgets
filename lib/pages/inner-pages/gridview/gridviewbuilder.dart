import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class GridViewBuilder extends StatelessWidget {
  // const GridViewBuilder({super.key});

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
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Image.network(
                items[index],
                //fit: BoxFit.fill,
              );
            }));
  }
}
