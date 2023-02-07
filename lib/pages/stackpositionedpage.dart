import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/stackpositioned/stackwithcontainer.dart';
import 'package:flutterwidgets/pages/inner-pages/stackpositioned/stackwithpositioned.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';

class StackPositionedPage extends StatelessWidget {
  const StackPositionedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Positioned Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/inner-pages/stackpositioned/'),
              SizedBox(height: 20),
              innerbutton(
                  title: 'Stack with Positioned',
                  pageName: StackwithPositioned()),
              innerbutton(
                  title: 'Stack with Container',
                  pageName: StackwithContainer(),
                  darkShade: true),
            ],
          ),
        ),
      ),
    );
  }
}
