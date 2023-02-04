import 'package:flutter/material.dart';

class filepath extends StatefulWidget {
  final String fullpath;
  const filepath({
    Key? key, required this.fullpath,
  }) : super(key: key);

  @override
  State<filepath> createState() => _filepathState();
}

class _filepathState extends State<filepath> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
                // color: Colors.amber[200],
                color: Color(0xFF6ae792),
              ),
      child: Text(
          'File : ${widget.fullpath}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
    );
  }
}