import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/placeholderpage.dart'),
            subheading(heading: 'Example 1 : '),
            Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 50,
            ),
            subheading(heading: 'Example 2 : Placeholder with Color & StrokeWidth'),
            Container(
              width: 150,
              height: 150,
              child: Placeholder(
                color: Colors.blue,
                strokeWidth: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
