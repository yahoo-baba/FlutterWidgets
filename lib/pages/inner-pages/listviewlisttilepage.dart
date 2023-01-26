import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListViewListtilePage extends StatelessWidget {
  const ListViewListtilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with ListTile Widget'),
      ),
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const filepath(
                fullpath: 'lib/pages/inner-pages/listviewlisttilepage.dart'),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              tileColor: Colors.blue[100],
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
              tileColor: Colors.blue[200],
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              tileColor: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
