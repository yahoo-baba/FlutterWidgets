import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/listviewbuilderlisttilepage.dart';
import 'package:flutterwidgets/pages/inner-pages/listviewbuilderpage.dart';
import 'package:flutterwidgets/pages/inner-pages/listviewhorizontalpage.dart';
import 'package:flutterwidgets/pages/inner-pages/listviewlisttilepage.dart';
import 'package:flutterwidgets/pages/inner-pages/listviewsimplepage.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // filepath(fullpath: 'lib/pages/listviewpage.dart'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ListViewSimplePage(),
                    ),
                  );
                },
                child: Text('Simple ListView', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: StadiumBorder(),
                  minimumSize: const Size.fromHeight(40),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ListViewListtilePage(),
                    ),
                  );
                },
                child: Text('ListView with List Tile',
                    style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  shape: StadiumBorder(),
                  minimumSize: const Size.fromHeight(40),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ListViewBuilderListtilePage(),
                    ),
                  );
                },
                child: Text('ListView Builder with List Tile',
                    style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: StadiumBorder(),
                  minimumSize: const Size.fromHeight(40),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ListViewBuilderPage(),
                    ),
                  );
                },
                child: Text('ListView Builder with Container',
                    style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  shape: StadiumBorder(),
                  minimumSize: const Size.fromHeight(40),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ListViewHorizontalPage(),
                    ),
                  );
                },
                child:
                    Text('Horizontal ListView', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: StadiumBorder(),
                  minimumSize: const Size.fromHeight(40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
