import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class StackwithPositioned extends StatelessWidget {
  const StackwithPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack with Positioned Widget'),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(),
            Positioned(
                top: 100,
                left: 100,
                width: 200,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                ))
          ],
        ),
      ),
    );
  }
}
