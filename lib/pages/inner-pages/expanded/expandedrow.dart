import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ExpandedRowPage extends StatelessWidget {
  const ExpandedRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/expandedrow.dart'),
            subheading(heading: 'Example 1 : '),
            Row(
              children: [
                Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(' 1'),
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text('Expanded 2'),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple[300],
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(' 3'),
              )
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}