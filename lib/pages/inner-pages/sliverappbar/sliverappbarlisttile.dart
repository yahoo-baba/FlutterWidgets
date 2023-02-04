import 'package:flutter/material.dart';

class SliverAppBarListTile extends StatefulWidget {
  const SliverAppBarListTile({super.key});

  @override
  State<SliverAppBarListTile> createState() => _SliverAppBarListTileState();
}

class _SliverAppBarListTileState extends State<SliverAppBarListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SomeText', textScaleFactor: 1),
              background: Image.asset(
                'assets/images/beach.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          //3
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(8),
                      width: 100,
                      child: Placeholder()),
                  title: Text('Place ${index + 1}', textScaleFactor: 1.5),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}