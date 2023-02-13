import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Widget'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.amber,
            child: Center(
              child: Text('1',style: TextStyle(fontSize: 100),),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Center(
              child: Text('2',style: TextStyle(fontSize: 100),),
            ),
          ),
          Container(
            color: Colors.tealAccent,
            child: Center(
              child: Text('3',style: TextStyle(fontSize: 100),),
            ),
          )
        ],
      ),
    );
  }
}
