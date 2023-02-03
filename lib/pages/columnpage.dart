import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          // verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal Alignment
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, // Vertical Alignment
          children: const <Widget>[
            filepath(fullpath: 'lib/pages/columnpage.dart'),
            subheading(heading: 'Column 2'),
            subheading(heading: 'Column 3'),
            subheading(heading: 'Column 4'),
          ],
        ),
      ),
    );
  }
}
