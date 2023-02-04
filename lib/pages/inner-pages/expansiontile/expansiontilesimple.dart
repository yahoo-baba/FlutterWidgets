import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ExpansionTileSimple extends StatelessWidget {
  const ExpansionTileSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            filepath(fullpath: 'lib/pages/inner-pages/expansiontile/expansiontilesimple.dart'),
            subheading(heading: 'Example 1 : '),
            ExpansionTile(
              title: Text('Colors'),
              subtitle: Text('Expand this tile to see its contents'),
              // Contents
              children: [
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    title: Text('Blue')),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text('Red')),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                    ),
                    title: Text('Amber')),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.pink,
                    ),
                    title: Text('Pink')),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    title: Text('Green')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
