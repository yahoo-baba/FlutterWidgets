import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            filepath(fullpath: 'lib/pages/iconpage.dart'),
            subheading(heading: 'Example 1 : '),
            Icon(
              Icons.verified_user,
              size: 60,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
