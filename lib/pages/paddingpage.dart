import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/paddingpage.dart'),
            subheading(heading: 'Example 1 : '),
            Container(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                //padding: EdgeInsets.only(left: 20,top: 20),
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            subheading(heading: 'Example 2 : '),
            Container(
              color: Colors.pink,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
