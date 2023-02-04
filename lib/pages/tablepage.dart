import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  // this dummy data will be displayed in the table
  final List<Map> _users = [
    {'id': 1, 'name': 'John'},
    {'id': 2, 'name': 'Bob'},
    {'id': 3, 'name': 'Trump'},
    {'id': 4, 'name': 'Joe Biden'},
    {'id': 5, 'name': 'Superman'},
    {'id': 6, 'name': 'Wonder Lady'},
    {'id': 7, 'name': 'Ronaldo'},
    {'id': 8, 'name': 'Ben'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
      ),
      body: Column(
        children: <Widget>[
          filepath(fullpath: 'lib/pages/tablepage.dart'),
              SizedBox(height: 20),
          
         Container(
           padding: EdgeInsets.all(10),
           child: Table(
              columnWidths: const {
                0: FixedColumnWidth(50),
                1: FlexColumnWidth(),
              },
              children: _users.map((user) {
                return TableRow(children: [
                  Container(
                      color: _users.indexOf(user) % 2 == 0
                          ? Colors.blue[50]
                          : Colors.amber[50],
                      padding: const EdgeInsets.all(15),
                      child: Text(user['id'].toString())),
                  Container(
                      color: _users.indexOf(user) % 2 == 0
                          ? Colors.blue[50]
                          : Colors.amber[50],
                      padding: const EdgeInsets.all(15),
                      child: Text(user['name']))
                ]);
              }).toList(),
              border: TableBorder.all(width: 1, color: Colors.black),
            ),
         ),
        ]
      ),
    );
  }
}