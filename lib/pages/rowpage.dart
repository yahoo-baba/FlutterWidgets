import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/rowpage.dart'),
            subheading(heading: 'Example 1'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.description,
                  color: Colors.blue,
                  size: 30.0,
                ),
                Text(
                  'Some Text',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            subheading(heading: 'Example 2 : Change Direction'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: const <Widget>[
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.description,
                  color: Colors.blue,
                  size: 30.0,
                ),
                Text(
                  'Some Text',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            subheading(heading: 'Example 3 : mainAxisAlignment'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.description,
                  color: Colors.blue,
                  size: 30.0,
                ),
                Text(
                  'Some Text',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            subheading(heading: 'Example 4 : crossAxisAlignment'),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.description,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  Text(
                    'Some Text',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
