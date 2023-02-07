import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class StackwithContainer extends StatelessWidget {
  const StackwithContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack with Container Widget'),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: 50,
                left: 50,
                width: 200,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                )),
            Positioned(
                top: 75,
                left: 75,
                width: 200,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(15)),
                )),
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
