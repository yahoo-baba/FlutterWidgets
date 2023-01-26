import 'package:flutter/material.dart';

class CenterWidgetPage extends StatelessWidget {
  const CenterWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    appBar: AppBar(
        title:const Text('Center Widget'),
      ),
      body:const Center(
         //heightFactor: 2, // This value Multiply with height of 'child' and give it on top about the child
         //widthFactor: 2, // This value Multiply with width of 'child' and give it on left of child
         child: Text('Center widget page', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        // child: Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.amber,
        // ),
      )
    );
  }
}