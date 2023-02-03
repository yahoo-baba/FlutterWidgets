import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({super.key});

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  late bool sort;
  List<user> selectedList = [];
  List<user> userdetails1 = [
    user(
      rank: '1',
      name: 'john',
      email: 'john@gmail.com',
      designation: 'Designer',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '2',
      name: 'Lee',
      email: 'Lee@gmail.com',
      designation: 'Designer',
      birthday: '12-07-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '3',
      name: 'Miller',
      email: 'Miller@gmail.com',
      designation: 'Staff',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '4',
      name: 'killer',
      email: 'killer@gmail.com',
      designation: 'Manager',
      birthday: '13-04-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '5',
      name: 'Smiler',
      email: 'Smiler@gmail.com',
      designation: 'Developer',
      birthday: '12-06-1997',
      location: 'Mumbai',
    ),
  ];
  List<user> userdetails = [
    user(
      rank: '1',
      name: 'john',
      email: 'john@gmail.com',
      designation: 'Designer',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '2',
      name: 'Lee',
      email: 'Lee@gmail.com',
      designation: 'Designer',
      birthday: '12-07-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '3',
      name: 'Miller',
      email: 'Miller@gmail.com',
      designation: 'Staff',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '4',
      name: 'killer',
      email: 'killer@gmail.com',
      designation: 'Manager',
      birthday: '13-04-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '5',
      name: 'Smiler',
      email: 'Smiler@gmail.com',
      designation: 'Developer',
      birthday: '12-06-1997',
      location: 'Mumbai',
    ),
  ];

  onSelectedRow(bool? selected, user data) async {
    setState(() {
      if (selected!) {
        selectedList.add(data);
      } else {
        selectedList.remove(data);
      }
    });
  }

  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
      if (ascending) {
        userdetails1.sort((a, b) => a.name!.compareTo(b.name!));
      } else {
        userdetails1.sort((a, b) => b.name!.compareTo(a.name!));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    sort = false;
    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable Widget'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/datatablepage.dart'),
              subheading(heading: 'Example 1 : Simple DataTable'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: <DataColumn>[
                    DataColumn(label: Text('Rank'), tooltip: 'Rank'),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Designation')),
                    DataColumn(label: Text('BirthDate')),
                    DataColumn(label: Text('Location')),
                  ],
                  rows: userdetails
                      .map(
                        (data) => DataRow(
                          cells: [
                            DataCell(Text(data.rank!)),
                            DataCell(Text(data.name!)),
                            DataCell(Text(data.email!)),
                            DataCell(Text(data.designation!)),
                            DataCell(Text(data.birthday!)),
                            DataCell(Text(data.location!)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              subheading(
                  heading: 'Example 2 : DataTable with Multiple Selections'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Theme(
                  data: ThemeData.light(),
                  child: DataTable(
                    columns: <DataColumn>[
                      DataColumn(label: Text('Rank'), tooltip: 'Rank'),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Email')),
                      DataColumn(label: Text('Designation')),
                      DataColumn(label: Text('BirthDate')),
                      DataColumn(label: Text('Location')),
                    ],
                    rows: userdetails
                        .map(
                          (data) => DataRow(
                            selected: selectedList.contains(data),
                            onSelectChanged: (b) {
                              onSelectedRow(b, data);
                              //toasty(context, data.name);
                            },
                            cells: [
                              DataCell(Text(data.rank!)),
                              DataCell(Text(data.name!)),
                              DataCell(Text(data.email!)),
                              DataCell(Text(data.designation!)),
                              DataCell(Text(data.birthday!)),
                              DataCell(Text(data.location!)),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              subheading(heading: 'Example 3 : DataTable with name sorting'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  sortAscending: sort,
                  sortColumnIndex: 1,
                  columns: <DataColumn>[
                    DataColumn(label: Text('Rank'), tooltip: 'Rank'),
                    DataColumn(
                      label: Text('Name'),
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sort = !sort;
                        });
                        onSortColumn(columnIndex, ascending);
                      },
                    ),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Designation')),
                    DataColumn(label: Text('Birthdate')),
                    DataColumn(label: Text('Location')),
                  ],
                  rows: userdetails1
                      .map(
                        (data) => DataRow(
                          cells: [
                            DataCell(Text(data.rank!)),
                            DataCell(Text(data.name!)),
                            DataCell(Text(data.email!)),
                            DataCell(Text(data.designation!)),
                            DataCell(Text(data.birthday!)),
                            DataCell(Text(data.location!)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class user {
  String? rank;
  String? name;
  String? email;
  String? designation;
  String? birthday;
  String? location;

  user(
      {this.rank,
      this.name,
      this.email,
      this.designation,
      this.birthday,
      this.location});
}
