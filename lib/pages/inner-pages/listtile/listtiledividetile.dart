import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListTileDivideTile extends StatelessWidget {
  const ListTileDivideTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Widget with Divide Tile'),
      ),
      body: ListView(
          children: ListTile.divideTiles(
            context: context, tiles : [
              ListTile(
                title: Text('Tile 1'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 2'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 3'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 4'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 5'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 6'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 7'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Tile 8'),
                leading: Icon(Icons.person),
              )
            ],
            color: Colors.blue
          ).toList(),
        ),
    );
  }
}
