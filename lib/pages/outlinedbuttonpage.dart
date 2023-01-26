import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class OutlinedButtonPage extends StatelessWidget {
  const OutlinedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutlinedButton Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'File : lib/pages/outlinedbuttonpage.dart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subheading(heading: 'Example 1 : Default Outlined Button'),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.black38, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 0.8, //width of the border
                ),
              ),
              onPressed: () {
                print('Default Outline button');
              },
              child: Text(
                'Default Outline button',
                style: TextStyle(fontSize: 16),
              ),
            ),
            subheading(heading: 'Example 2 : Outlined Button with Icon'),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue, //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 0.8, //width of the border
                  ),
                ),
                onPressed: () {
                  print('Outline button with icon');
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                label: Text(
                  'Outline button with icon',
                  style: TextStyle(fontSize: 16),
                )),
            subheading(heading: 'Example 3 : Rounded Outlined Button'),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.purple, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 2, //width of the border
                ),
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                print('Rounded Outline button');
              },
              child: Text(
                'Rounded Outline button',
                style: TextStyle(fontSize: 16, color: Colors.purple),
              ),
            ),
            subheading(
                heading:
                    'Example 4 : Outlined Button with Border Radius & Shadow'),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.pink, //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 1.5, //width of the border
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.amberAccent,
                  shadowColor: Colors.blue,
                  elevation: 10),
              onPressed: () {
                print('Customize Rounded Outline button');
              },
              child: Text(
                'Customize Rounded Outline button',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
