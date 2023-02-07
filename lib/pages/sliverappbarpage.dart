import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/sliverappbar/sliverappbarlisttile.dart';
import 'package:flutterwidgets/pages/inner-pages/sliverappbar/sliverappbartabbar.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverAppBar Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/inner-pages/sliverappbar'),
              SizedBox(height: 20),
              innerbutton(
                  title: 'SliverAppBar with ListView',
                  pageName: SliverAppBarListTile(),
                  darkShade: true),
              innerbutton(
                  title: 'SliverAppBar with TabBar',
                  pageName: SliverAppBarTabBar()),
            ],
          ),
        ),
      ),
    );
  }
}
