import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/dividerpage.dart'),
            subheading(heading: 'Example 1 : Horizontal Dividers'),
            Divider(
              color: Colors.deepOrangeAccent,
              thickness: 6,
            ),
            SizedBox(height: 30),
            Row(children: <Widget>[
              Expanded(child: Divider(color: Colors.grey[800])),
              SizedBox(width: 20),
              Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20),
              Expanded(child: Divider(color: Colors.grey[800])),
            ]),
            subheading(heading: 'Example 2 : Dashed Divider'),
            Separator(
              color: Colors.green,
              dashWidth: 20,
              height: 4,
            ),
            SizedBox(height: 20),
            Separator(color: Colors.grey),
            subheading(heading: 'Example 3 : Vertical Divider'),
            SizedBox(height: 20),
            IntrinsicHeight(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Text(
                  'Setting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class Separator extends StatelessWidget {
  final double height;
  final double dashWidth;
  final Color color;

  const Separator(
      {this.height = 1, this.dashWidth = 10, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidths = dashWidth;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidths)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidths,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
