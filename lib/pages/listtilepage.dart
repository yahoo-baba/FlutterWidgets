import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/inner-pages/listtile/listtiledividetile.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/innerbutton.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/listtilepage.dart'),
            subheading(heading: 'Example 1 : '),
            ListTile(
              title: Text('Some Text',style: TextStyle(fontWeight: FontWeight.bold),),
              tileColor: Colors.amber[300],
              onTap: (){},
              leading: Icon(Icons.person),
              trailing: Icon(Icons.menu),
              iconColor: Colors.green,
              textColor: Colors.red,
            ),
            subheading(heading: 'Example 2 : ListTile with Subtitle'),
             ListTile(
              title: Text('Some Text',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Sub Title Text'),
              tileColor: Colors.brown[100],
              onTap: (){},
              leading: Icon(Icons.person),
              trailing: Icon(Icons.menu),
              iconColor: Colors.blue,
            ),
            subheading(heading: 'Example 3 : ListTile with two line Subtitle'),
            ListTile(
              title: Text('Some Text',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Sub Title Text \n Here is third line text.'),
              tileColor: Colors.orange[100],
              onTap: (){},
              leading: Icon(Icons.person),
              trailing: Icon(Icons.menu),
              iconColor: Colors.purple,
              isThreeLine: true, // This option is use for third text line.
              // dense: true, // For small size of text in listTile
            ),
            subheading(heading: 'Example 4 : ListTile with Divide Tile'),
            innerbutton(
                  title: 'Goto Example Page',
                  pageName: ListTileDivideTile()),
          ],
        ),
      ),
    );
  }
}
