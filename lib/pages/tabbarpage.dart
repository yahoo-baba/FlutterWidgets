import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // https://www.flutterbeads.com/a-deep-dive-into-tabbar-in-flutter/
    // https://www.flutterbeads.com/change-tab-bar-color-in-flutter/
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            labelColor: Colors.black,  // Icon & Text Color
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.black, // Underline Color
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
                text: 'Hello',
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
