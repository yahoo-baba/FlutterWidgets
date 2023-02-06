import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ExpandedColumnPage extends StatelessWidget {
  const ExpandedColumnPage({super.key});

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
            filepath(fullpath: 'lib/pages/expandedcolumn.dart'),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.amber,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text('Expanded 1'),
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
                child: Text('Expanded 3'),
              )
            )
            
          ],
        ),
      ),
    );
  }
}
