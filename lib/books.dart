import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/appbarwidgetpage.dart';
import 'package:flutterwidgets/pages/centerwidgetpage.dart';
import 'package:flutterwidgets/pages/columnpage.dart';
import 'package:flutterwidgets/pages/containerwidgetpage.dart';
import 'package:flutterwidgets/pages/datatablepage.dart';
import 'package:flutterwidgets/pages/dividerpage.dart';
import 'package:flutterwidgets/pages/elevatedbuttonpage.dart';
import 'package:flutterwidgets/pages/iconbuttonpage.dart';
import 'package:flutterwidgets/pages/iconpage.dart';
import 'package:flutterwidgets/pages/imagepage.dart';
import 'package:flutterwidgets/pages/listviewpage.dart';
import 'package:flutterwidgets/pages/nopagefoundpage.dart';
import 'package:flutterwidgets/pages/outlinedbuttonpage.dart';
import 'package:flutterwidgets/pages/rowpage.dart';
import 'package:flutterwidgets/pages/textwidgetpage.dart';

import 'pages/selectabletextpage.dart';

class Book {
  final String title;
  final dynamic pageName;

  const Book({
    required this.title,
    required this.pageName,
  });

  //This function is used in main.dart file on onTap()
  //MaterialPageRoute gotoPage(String pagename){
  // MaterialPageRoute gotoPage(){
  //   return MaterialPageRoute(builder: (context){
  //     switch (title) {
  //       case 'AppBar Widget': return const AppbarWidgetPage();
  //       case 'Text Widget': return const TextWidgetPage();
  //       case 'Center Widget': return const CenterWidgetPage();
  //       default: return const NoPageFoundPage();
  //     }
  //   });
  // }

  MaterialPageRoute gotoPage() {
    return MaterialPageRoute(builder: (context) {
      return pageName;
    });
  }
}

const allWidgets = [
  Book(title: 'AppBar Widget', pageName: AppbarWidgetPage()),
  Book(title: 'Text Widget', pageName: TextWidgetPage()),
  Book(title: 'SelectableText Widget', pageName: SelectableTextPage()),
  Book(title: 'Center Widget', pageName: CenterWidgetPage()),
  Book(title: 'Container Widget', pageName: ContainerWidgetPage()),
  Book(title: 'Align Widget', pageName: NoPageFoundPage()),
  Book(title: 'Drawer Widget', pageName: NoPageFoundPage()),
  Book(title: 'PopupMenuButton Widget', pageName: NoPageFoundPage()),
  Book(title: 'Image Widget', pageName: ImagePage()),
  Book(title: 'Icon Widget', pageName: IconPage()),
  Book(title: 'Image Filter Widget', pageName: NoPageFoundPage()),
  Book(title: 'Column Widget', pageName: ColumnPage()),
  Book(title: 'Row Widget', pageName: RowPage()),
  Book(title: 'Divider Widget', pageName: DividerPage()),
  Book(title: 'SizedBox Widget', pageName: NoPageFoundPage()),
  Book(title: 'Spacer Widget', pageName: NoPageFoundPage()),
  Book(title: 'Padding Widget', pageName: NoPageFoundPage()),
  Book(title: 'Expanded Widget', pageName: NoPageFoundPage()),
  Book(title: 'Flex Widget', pageName: NoPageFoundPage()),
  Book(title: 'SingleChildScrollView Widget', pageName: NoPageFoundPage()),
  Book(title: 'FittedBox Widget', pageName: NoPageFoundPage()),
  Book(title: 'Card Widget', pageName: NoPageFoundPage()),
  Book(title: 'MediaQuery Widget', pageName: NoPageFoundPage()),
  Book(title: 'Custom Widget', pageName: NoPageFoundPage()),
  Book(title: 'FlutterLogo Widget', pageName: NoPageFoundPage()),
  Book(title: 'ElevatedButton Widget', pageName: ElevatedButtonPage()),
  Book(title: 'OutlinedButton Widget', pageName: OutlinedButtonPage()),
  Book(title: 'IconButton Widget', pageName: IconButtonPage()),
  Book(title: 'InkWell Widget', pageName: NoPageFoundPage()),
  Book(title: 'ToolTip Widget', pageName: NoPageFoundPage()),
  Book(title: 'Stack Widget', pageName: NoPageFoundPage()),
  Book(title: 'Positioned Widget', pageName: NoPageFoundPage()),
  Book(title: 'Wrap Widget', pageName: NoPageFoundPage()),
  Book(title: 'Listview Widget', pageName: ListViewPage()),
  Book(title: 'Grid Widget', pageName: NoPageFoundPage()),
  Book(title: 'ExpansionTile Widget', pageName: NoPageFoundPage()),
  Book(title: 'Clip Widget', pageName: NoPageFoundPage()),
  Book(title: 'TabBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'ButtonBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'SliverAppBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'Hero Widget', pageName: NoPageFoundPage()),
  Book(title: 'Snackbar Widget', pageName: NoPageFoundPage()),
  Book(title: 'SafeArea Widget', pageName: NoPageFoundPage()),
  Book(title: 'InteractiveViewer Widget', pageName: NoPageFoundPage()),
  Book(title: 'StreamBuilder Widget', pageName: NoPageFoundPage()),
  Book(title: 'FutureBuilder Widget', pageName: NoPageFoundPage()),
  Book(title: 'Dailog Widget', pageName: NoPageFoundPage()),
  Book(title: 'BottomSheet Widget', pageName: NoPageFoundPage()),
  Book(title: 'Sliders & Carousel Widget', pageName: NoPageFoundPage()),
  Book(title: 'Stepper Widget', pageName: NoPageFoundPage()),
  Book(title: 'All Form Elements Widget', pageName: NoPageFoundPage()),
  Book(title: 'TimePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'DatePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'DateRangePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'FutureBuilder Widget', pageName: NoPageFoundPage()),
  Book(title: 'Table Widget', pageName: NoPageFoundPage()),
  Book(title: 'DataTable Widget', pageName: DataTablePage()),
  Book(title: 'SearchBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'GestureDetector Widget', pageName: NoPageFoundPage()),
  Book(title: 'No Page Found', pageName: NoPageFoundPage()),
];
