import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class SelectableTextPage extends StatelessWidget {
  const SelectableTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            filepath(fullpath: 'lib/pages/selectabletextpage.dart'),
            subheading(heading: 'Example 1 : Selectable Text'),
            SelectableText(
              'Hello! this text is selectable. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo turpis pretium, finibus mauris eget, fringilla urna. Duis faucibus orci in fermentum laoreet. Duis porta, tortor eget rutrum volutpat, risus nisi mollis neque, sed tempor lorem ligula et tellus. Nunc eget mauris mi.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
