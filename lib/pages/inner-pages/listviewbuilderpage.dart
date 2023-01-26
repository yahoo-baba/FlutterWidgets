import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Widget'),
      ),
      body: //Container(
          // padding: const EdgeInsets.all(10),
          //filepath(fullpath: 'lib/pages/inner-pages/listviewbuilderpage.dart'),
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: dataList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 16),
              itemBuilder: (context, index) {
                return DataList(dataList[index], index);
              }),
      //),
    );
  }
}

// ignore: must_be_immutable
class DataList extends StatelessWidget {
  late DataModel model;

  DataList(DataModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appStore.scaffoldBackgroundColor),
      padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: Row(
        children: [
          Image.asset(
            model.images,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            model.name,
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}

class DataModel {
  var images;
  var name;

  DataModel({
    this.images,
    this.name,
  });
}

List<DataModel> dataList = [
  DataModel(
    images: 'assets/listView/healthy.png',
    name: 'Yoga & Gym',
  ),
  DataModel(
    images: 'assets/listView/heart.png',
    name: 'Health',
  ),
  DataModel(
    images: 'assets/listView/airplane.png',
    name: 'Travel',
  ),
  DataModel(
    images: 'assets/listView/book.png',
    name: 'Education',
  ),
  DataModel(
    images: 'assets/listView/computer.png',
    name: 'Management',
  ),
  DataModel(
    images: 'assets/listView/finance.png',
    name: 'Finance',
  ),
  DataModel(
    images: 'assets/listView/food.png',
    name: 'Food',
  ),
  DataModel(
    images: 'assets/listView/airplane.png',
    name: 'Travel',
  ),
  DataModel(
    images: 'assets/listView/book.png',
    name: 'Education',
  ),
  DataModel(
    images: 'assets/listView/computer.png',
    name: 'Management',
  ),
  DataModel(
    images: 'assets/listView/finance.png',
    name: 'Finance',
  ),
  DataModel(
    images: 'assets/listView/food.png',
    name: 'Food',
  ),
  DataModel(
    images: 'assets/listView/graphic.png',
    name: 'Business',
  ),
  DataModel(
    images: 'assets/listView/healthy.png',
    name: 'Yoga & Gym',
  ),
  DataModel(
    images: 'assets/listView/heart.png',
    name: 'Health',
  ),
  DataModel(
    images: 'assets/listView/airplane.png',
    name: 'Travel',
  ),
  DataModel(
    images: 'assets/listView/book.png',
    name: 'Education',
  ),
  DataModel(
    images: 'assets/listView/computer.png',
    name: 'Management',
  ),
  DataModel(
    images: 'assets/listView/finance.png',
    name: 'Finance',
  ),
  DataModel(
    images: 'assets/listView/food.png',
    name: 'Food',
  ),
];

AppStore appStore = AppStore();

class AppStore {
  Color textPrimaryColor = Color(0xFF212121);
  Color iconColorPrimaryDark = Color(0xFF212121);
  Color scaffoldBackground = Color(0xFFEBF2F7);
  Color backgroundColor = Colors.black;
  Color backgroundSecondaryColor = Color(0xFF131d25);
  Color appColorPrimaryLightColor = Color(0xFFF9FAFF);
  Color textSecondaryColor = Color(0xFF5A5C5E);
  Color appBarColor = Colors.white;
  Color iconColor = Color(0xFF212121);
  Color iconSecondaryColor = Color(0xFFA8ABAD);
  Color cardColor = Colors.white;
  Color appColorPrimary = Color(0xFF1157FA);
  Color scaffoldBackgroundColor = Color(0xFFEFEFEF);

  AppStore();
}
