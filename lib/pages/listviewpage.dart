import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/listview/listviewbuilderlisttilepage.dart';
import 'package:flutterwidgets/pages/inner-pages/listview/listviewbuilderpage.dart';
import 'package:flutterwidgets/pages/inner-pages/listview/listviewhorizontalpage.dart';
import 'package:flutterwidgets/pages/inner-pages/listview/listviewlisttilepage.dart';
import 'package:flutterwidgets/pages/inner-pages/listview/listviewsimplepage.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';

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
              filepath(fullpath: 'lib/pages/inner-pages/listview'),
              SizedBox(height: 20),
              innerbutton(
                  title: 'Simple ListView', pageName: ListViewSimplePage()),
              innerbutton(
                  title: 'ListView with List Tile',
                  pageName: ListViewListtilePage(),
                  darkShade: true),
              innerbutton(
                  title: 'ListView Builder with List Tile',
                  pageName: ListViewBuilderListtilePage()),
              innerbutton(
                  title: 'ListView Builder with Container',
                  pageName: ListViewBuilderPage(),
                  darkShade: true),
              innerbutton(
                  title: 'Horizontal ListView',
                  pageName: ListViewHorizontalPage()),
            ],
          ),
        ),
      ),
    );
  }
}
