import 'package:flutter/material.dart';

class NoPageFoundPage extends StatelessWidget {
  const NoPageFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('No Page Found'),
      ),
      body:const Center(
        child: Text('No Page Found.'),
      )
    );
  }
}