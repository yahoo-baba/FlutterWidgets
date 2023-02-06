import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget'),
      ),
      body: Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(-0.5,0.2),
              child: Container(
                color: Colors.purple,
                width: 100,
                height: 100,
              ),
            )
    );
  }
}
