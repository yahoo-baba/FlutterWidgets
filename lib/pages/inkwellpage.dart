import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/expanded/expandedcolumn.dart';
import 'package:flutterwidgets/pages/inner-pages/expanded/expandedrow.dart';
import 'package:flutterwidgets/pages/inner-pages/stackpositioned/stackwithcontainer.dart';
import 'package:flutterwidgets/pages/inner-pages/stackpositioned/stackwithpositioned.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class InkWellPage extends StatelessWidget {
  const InkWellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell Widget'),
      ),
      body: Column(
        children: [
          const filepath(fullpath: 'lib/pages/inkwellpage.dart'),
          const subheading(heading: 'Example 1 :'),
          InkWell(
            onTap: () {
              print('InkWell Clicked');
            },
            child: Container(
              width: 150,
              height: 150,
              color: Colors.pink[400],
              alignment: Alignment.center,
              child: Text('Button',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          const subheading(heading: 'Example 2 : Container with Transparent'),
          InkWell(
            highlightColor: Colors.blue[100],
            splashColor: Colors.amber, // Cursor Pointer color
            radius:30 ,
            borderRadius: BorderRadius.circular(70), // highlight radius
            onTap: () {
              print('InkWell Clicked');
            },
            child: Container(
              width: 150,
              height: 150,
              // color: Colors.pink[400],
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text('Button',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}  
