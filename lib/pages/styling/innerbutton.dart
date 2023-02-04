import 'package:flutter/material.dart';

class innerbutton extends StatefulWidget {
  final String title;
  final dynamic pageName;
  final bool darkShade;
  const innerbutton({
   required this.title, required this.pageName, this.darkShade = false,
  }) : super();
  // const innerbutton({
  //   Key? key, required this.title, required this.pageName, this.darkShade = false,
  // }) : super(key: key);

  @override
  State<innerbutton> createState() => _innerbuttonState();
}

class _innerbuttonState extends State<innerbutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) =>
                  widget.pageName,
              ),
            );
          },
          child: Text(widget.title, style: TextStyle(fontSize: 18)),
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.darkShade ? Colors.blue[800] : Colors.blue,
            shape: StadiumBorder(),
            minimumSize: const Size.fromHeight(40),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}