import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class IconButtonPage extends StatelessWidget {
  const IconButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/iconbuttonpage.dart'),
            subheading(heading: 'Example 1 : Icon Button'),
            IconButton(
              color: Colors.purple,
              iconSize: 60,
              icon: Icon(
                Icons.train,
              ),
              onPressed: () {
                print('Icon Button 1');
              },
            ),
            subheading(
                heading: 'Example 2 : Icon Button with Background Color'),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pink, //<-- SEE HERE
              child: IconButton(
                icon: Icon(
                  Icons.flight,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('Icon Button 2');
                },
              ),
            ),
            subheading(heading: 'Example 3 : Icon Button with Border'),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.amber[800],
                shape: CircleBorder(
                    side: BorderSide(width: 2, color: Colors.black)),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                iconSize: 30,
                onPressed: () {
                  print("Share");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
