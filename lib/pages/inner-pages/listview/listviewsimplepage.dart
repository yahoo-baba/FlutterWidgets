import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListViewSimplePage extends StatelessWidget {
  const ListViewSimplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ListView Widget'),
      ),
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            filepath(fullpath: 'lib/pages/inner-pages/listview/listviewsimplepage.dart'),
            Container(
              height: 50,
              color: Colors.lime[800],
              child: const Center(child: Text('Apple')),
            ),
            Container(
              height: 50,
              color: Colors.lime[600],
              child: const Center(child: Text('Banana')),
            ),
            Container(
              height: 50,
              color: Colors.lime[400],
              child: const Center(child: Text('Mango')),
            ),
            Container(
              height: 50,
              color: Colors.lime[200],
              child: const Center(child: Text('Orange')),
            ),
          ],
        ),
      ),
    );
  }
}
