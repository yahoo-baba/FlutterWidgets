import 'package:flutter/material.dart';

class subheading extends StatefulWidget {
  final String heading;
  const subheading({
    Key? key, required this.heading,
  }) : super(key: key);

  @override
  State<subheading> createState() => _subheadingState();
}

class _subheadingState extends State<subheading> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 5, 10),
        child: Text(
          widget.heading,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      );
  }
}