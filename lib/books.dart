import 'package:flutter/material.dart';
import 'package:flutterwidgets/expansiontilepage.dart';
import 'package:flutterwidgets/pages/alignpage.dart';
import 'package:flutterwidgets/pages/appbarwidgetpage.dart';
import 'package:flutterwidgets/pages/centerwidgetpage.dart';
import 'package:flutterwidgets/pages/clippathpage.dart';
import 'package:flutterwidgets/pages/columnpage.dart';
import 'package:flutterwidgets/pages/containerwidgetpage.dart';
import 'package:flutterwidgets/pages/datatablepage.dart';
import 'package:flutterwidgets/pages/dividerpage.dart';
import 'package:flutterwidgets/pages/elevatedbuttonpage.dart';
import 'package:flutterwidgets/pages/expandedpage.dart';
import 'package:flutterwidgets/pages/gridviewpage.dart';
import 'package:flutterwidgets/pages/iconbuttonpage.dart';
import 'package:flutterwidgets/pages/iconpage.dart';
import 'package:flutterwidgets/pages/imagepage.dart';
import 'package:flutterwidgets/pages/inkwellpage.dart';
import 'package:flutterwidgets/pages/listtilepage.dart';
import 'package:flutterwidgets/pages/listviewpage.dart';
import 'package:flutterwidgets/pages/nopagefoundpage.dart';
import 'package:flutterwidgets/pages/outlinedbuttonpage.dart';
import 'package:flutterwidgets/pages/paddingpage.dart';
import 'package:flutterwidgets/pages/pageviewpage.dart';
import 'package:flutterwidgets/pages/placeholderpage.dart';
import 'package:flutterwidgets/pages/radiopage.dart';
import 'package:flutterwidgets/pages/rowpage.dart';
import 'package:flutterwidgets/pages/sliverappbarpage.dart';
import 'package:flutterwidgets/pages/stackpositionedpage.dart';
import 'package:flutterwidgets/pages/tablepage.dart';
import 'package:flutterwidgets/pages/textwidgetpage.dart';

import 'pages/selectabletextpage.dart';

class Book {
  final String title;
  final dynamic pageName;

  const Book({
    required this.title,
    required this.pageName,
  });

  MaterialPageRoute gotoPage() {
    return MaterialPageRoute(builder: (context) {
      return pageName;
    });
  }
}

const allWidgets = [
  Book(title: 'GridView Widget', pageName: GridViewPage()),
  Book(title: 'AppBar Widget', pageName: AppbarWidgetPage()),
  Book(title: 'Text Widget', pageName: TextWidgetPage()),
  Book(title: 'SelectableText Widget', pageName: SelectableTextPage()),
  Book(title: 'Center Widget', pageName: CenterWidgetPage()),
  Book(title: 'Container Widget', pageName: ContainerWidgetPage()),
  Book(title: 'Align Widget', pageName: AlignPage()),
  Book(title: 'Drawer Widget', pageName: NoPageFoundPage()),
  Book(title: 'PopupMenuButton Widget', pageName: NoPageFoundPage()),
  Book(title: 'Image Widget', pageName: ImagePage()),
  Book(title: 'Icon Widget', pageName: IconPage()),
  Book(title: 'Placeholder Widget', pageName: PlaceholderPage()),
  Book(title: 'Image Filter Widget', pageName: NoPageFoundPage()),
  Book(title: 'Column Widget', pageName: ColumnPage()),
  Book(title: 'Row Widget', pageName: RowPage()),
  Book(title: 'Divider Widget', pageName: DividerPage()),
  Book(title: 'SizedBox Widget', pageName: NoPageFoundPage()),
  Book(title: 'Spacer Widget', pageName: NoPageFoundPage()),
  Book(title: 'Padding Widget', pageName: PaddingPage()),
  Book(title: 'Expanded Widget', pageName: ExpandedPage()),
  Book(title: 'SliverAppBar Widget', pageName: SliverAppBarPage()),
  Book(title: 'Flex Widget', pageName: NoPageFoundPage()),
  Book(title: 'Stack & Positioned Widget', pageName: StackPositionedPage()),
  Book(title: 'SingleChildScrollView Widget', pageName: NoPageFoundPage()),
  Book(title: 'FittedBox Widget', pageName: NoPageFoundPage()),
  Book(title: 'Card Widget', pageName: NoPageFoundPage()),
  Book(title: 'MediaQuery Widget', pageName: NoPageFoundPage()),
  Book(title: 'Custom Widget', pageName: NoPageFoundPage()),
  Book(title: 'FlutterLogo Widget', pageName: NoPageFoundPage()),
  Book(title: 'ElevatedButton Widget', pageName: ElevatedButtonPage()),
  Book(title: 'OutlinedButton Widget', pageName: OutlinedButtonPage()),
  Book(title: 'IconButton Widget', pageName: IconButtonPage()),
  Book(title: 'InkWell Widget', pageName: InkWellPage()),
  Book(title: 'ToolTip Widget', pageName: NoPageFoundPage()),
  Book(title: 'Wrap Widget', pageName: NoPageFoundPage()),
  Book(title: 'ListTile Widget', pageName: ListTilePage()),
  Book(title: 'Listview Widget', pageName: ListViewPage()),
  // Book(title: 'GridView Widget', pageName: NoPageFoundPage()),
  Book(title: 'ExpansionTile Widget', pageName: ExpansionTilePage()),
  Book(title: 'ClipPath Widget', pageName: ClipPathPage()),
  Book(title: 'TabBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'ButtonBar Widget', pageName: NoPageFoundPage()),
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
  Book(title: 'Radio Widget', pageName: RadioPage()),
  Book(title: 'TimePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'DatePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'DateRangePicker Widget', pageName: NoPageFoundPage()),
  Book(title: 'FutureBuilder Widget', pageName: NoPageFoundPage()),
  Book(title: 'Table Widget', pageName: TablePage()),
  Book(title: 'DataTable Widget', pageName: DataTablePage()),
  Book(title: 'PageView Widget', pageName: PageViewPage()),
  Book(title: 'SearchBar Widget', pageName: NoPageFoundPage()),
  Book(title: 'GestureDetector Widget', pageName: NoPageFoundPage()),
  Book(title: 'No Page Found', pageName: NoPageFoundPage()),
];
