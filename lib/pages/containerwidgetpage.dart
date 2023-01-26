import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ContainerWidgetPage extends StatelessWidget {
  const ContainerWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
      ),
      // https://api.flutter.dev/flutter/widgets/Container-class.html
      body: SingleChildScrollView(
        child: Column(
          children: [
            filepath(fullpath: 'lib/pages/containerwidgetpage.dart'),
            subheading(heading: 'Example 1 :'),
            Container(
              // color: Colors.cyanAccent, // Don't use 'color' if you are using 'decoration' method
              width: double.infinity, // Full width Container
              // width: 200,
              height: 200,
              margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(5),
              // padding: const EdgeInsets.fromLTRB(10, 20, 30, 5),
              // padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),

              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 4.0, color: const Color(0xFFFFFFFF)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: const [
                  BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 3,
                      color: Colors.grey,
                      offset: Offset(2, -2))
                ],
              ),
              child: const Text(
                'Flutter Container with fullwidth, shadow, border radius, border color, margin, padding.',
                style: TextStyle(fontSize: 20, height: 1.5),
              ),
            ),
            subheading(heading: 'Example 2 : Gradient'),
            Container(
              width: 300,
              height: 130,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              //color: Colors.pinkAccent,
              alignment: Alignment.bottomLeft, // Inner Content Alignment
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.topRight, // (Option Property)
                    end: Alignment.bottomLeft, // (Option Property)
                    stops: [.2, 5] // (Option Property)
                    ),
              ),
              child: const Text(
                'Flutter Container with Gradient',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            subheading(heading: 'Example 3 : Different Border Radius'),
            Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),

              alignment: Alignment.center, // Inner Content Alignment
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                //borderRadius:  BorderRadius.circular(10).copyWith(topRight: Radius.circular(0)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(0)),
              ),
              child: const Text(
                'Flutter Container with different border radius',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            subheading(heading: 'Example 4 : Background Image'),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomCenter, // Inner Content Alignment
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      //colorFilter:
                      //   ColorFilter.mode(Colors.transparent, BlendMode.color),
                      image: AssetImage('assets/doremon-short.jpeg'))),
              child: const Text(
                'Flutter Container with Background Image',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    backgroundColor: Colors.pink),
              ),
            ),
            subheading(heading: 'Example 5 : Circle Shape'),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.center, // Inner Content Alignment
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
              ),
              child: const Text(
                'Flutter Container with Circle Shape',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            subheading(heading: 'Example 6 : BoxConstraints'),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              alignment: Alignment.center,
              constraints: const BoxConstraints.tightForFinite(width: 250),
              child: const Text(
                'Flutter Container with BoxConstraints',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            subheading(heading: 'Example 7 : Rotate & Skew'),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(
                  0.2), //https://www.youtube.com/watch?v=mL6cQLzXm0s
              // transform: Matrix4.skewX(.2), // https://api.flutter.dev/flutter/vector_math_64/Matrix4-class.html
              child: const Text(
                'Flutter Container with Rotate',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            subheading(heading: 'Example 8 : Translate & Scale'),
            Transform.translate(
              offset: const Offset(10, -26),
              child: Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                color: Colors.indigoAccent,
                alignment: Alignment.center,

                // Transform.rotate(angle: 20),
                child: const Text(
                  'Flutter Container with Translate and Scale',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            subheading(heading: 'Example 9 : One Sided Border'),
            // https://www.flutterbeads.com/add-border-to-container-flutter/
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ),
                  bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ),
                ),
              ),
              child: const Text(
                "Border in Top & Bottom",
                style: TextStyle(fontSize: 23.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
