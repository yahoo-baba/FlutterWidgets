import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListViewBuilderListtilePage extends StatelessWidget {
  const ListViewBuilderListtilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with ListTile Widget'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "Test",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
      // padding: const EdgeInsets.all(10),
      // const filepath(fullpath: 'lib/pages/inner-pages/listviewbuilderlisttilepage.dart'),
    );
  }
}
