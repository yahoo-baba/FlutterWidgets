import 'package:flutter/material.dart';

class ClipPathPage extends StatefulWidget {
  const ClipPathPage({super.key});

  @override
  State<ClipPathPage> createState() => _ClipPathPageState();
}

class _ClipPathPageState extends State<ClipPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip Path for Bezier Curves'),
      ),
      body: Column(
        children: [
          // https://medium.com/@omer28gunaydin/flutter-clippath-for-bezier-curves-2bd9139bda4b
          // https://shapemaker.web.app/
          ClipPath(
            clipper: ClipPathClipper(),
            child: Container(
              color: Colors.blue,
              height: 300,
              child: const Center(
                child: Text('Content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    final path = Path();
    //(0,0) 1.Point
    path.lineTo(0, height); //2.Point
    path.quadraticBezierTo(
      width * 0.5, //3.Point --> width * 0.5, height - 100,
      height - 100,
      width, //4.Point --> width, height
      height,
    );
  // path.lineTo(width, height - 100);
    path.lineTo(width, 0); //5.Point
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}