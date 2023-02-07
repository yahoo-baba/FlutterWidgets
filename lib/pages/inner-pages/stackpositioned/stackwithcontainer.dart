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
        margin: EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.deepOrange,
              
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber[200],
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 120),
            //   width: 100,
            //   height: 100,
            //   color: Colors.lime[700],
            //   child: Text("data"),
            // )
            Positioned(
                top: 140,
                left: 140,
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(15)),
                )),
            
          ],
        ),
      ),
    );
  }
}
