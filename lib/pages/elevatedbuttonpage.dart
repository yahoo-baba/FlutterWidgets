import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButton Widget'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/elevatedbuttonpage.dart'),
              subheading(heading: 'Example 1 : Default ElevatedButton'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Example 1 : Clicked');
                },
                child: Text('Elevated Button'),
              ),
              subheading(heading: 'Example 2 : Button with Border Radius'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Example 2 : Clicked');
                },
                child: Text('Elevated Button', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              subheading(
                  heading: 'Example 3 : Button with Border & Background Color'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Example 3 : Clicked');
                },
                child: Text('Elevated Button', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              subheading(heading: 'Example 4 : Button with Icon'),
              ElevatedButton.icon(
                onPressed: () {
                  debugPrint('Example 4 : Clicked');
                },
                icon: Icon(Icons.save), //icon data for elevated button
                label: const Text("Elevated Button with Icon",
                    style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor:
                        Colors.yellow //elevated btton background color
                    ),
              ),
              subheading(
                  heading: 'Example 5 : Button with Gradient Background'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0.0),
                  elevation: 5,
                ),
                onPressed: () {
                  debugPrint('Example 5 : Clicked');
                },
                child: Ink(
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.green]),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    constraints: const BoxConstraints(minWidth: 88.0),
                    child: const Text(
                      'Elevated Button',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ),
              subheading(heading: 'Example 6 : Full Width Button'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size.fromHeight(40), // NEW
                ),
                onPressed: () {
                  debugPrint('Example 6 : Clicked');
                },
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
