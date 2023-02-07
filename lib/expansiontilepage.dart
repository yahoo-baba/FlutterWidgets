import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/expansiontile/expansiontilelistview.dart';
import 'package:flutterwidgets/pages/inner-pages/expansiontile/expansiontilesimple.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/inner-pages/expansiontile'),
              SizedBox(height: 20),
              innerbutton(
                  title: 'Simple ExpansionTile',
                  pageName: ExpansionTileSimple()),
              innerbutton(
                  title: 'ExpansionTile with ListView.builder',
                  pageName: ExpansionTileListview(),
                  darkShade: true),
            ],
          ),
        ),
      ),
    );
  }
}
