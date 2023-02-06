import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/expanded/expandedcolumn.dart';
import 'package:flutterwidgets/pages/inner-pages/expanded/expandedrow.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/inner-pages/expanded/'),
              SizedBox(height: 20),
              innerbutton(title :'Expanded in Column',pageName :ExpandedColumnPage()),
              innerbutton(title :'Expanded in Row',pageName :ExpandedRowPage(), darkShade: true),
            ],
          ),
        ),
      ),
    );
  }
}
