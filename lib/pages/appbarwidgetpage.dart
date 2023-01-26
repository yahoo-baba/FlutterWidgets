import 'package:flutter/material.dart';

class AppbarWidgetPage extends StatefulWidget {
  const AppbarWidgetPage({super.key});

  @override
  State<AppbarWidgetPage> createState() => _AppbarWidgetPageState();
}

class _AppbarWidgetPageState extends State<AppbarWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // https://api.flutter.dev/flutter/material/AppBar-class.html
      // Appbar START
      appBar: AppBar(
        title: const Text('AppBar Widget', style: TextStyle(fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false, // Hide Back Button from AppBar
        foregroundColor: Colors.amberAccent, // Color of Title & Icons in Appbar
        backgroundColor: Colors.orangeAccent[400],
        // backgroundColor: Colors.transparent, // Transparent Background

        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.green, Colors.blue])),
        ),

        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage('assets/sample.png'),
        //           fit: BoxFit.fill
        //       )
        //   ),
        // ),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8, // Give Opacity to 'title' 
        elevation: 2.0, // Give DropShadow to AppBar
        // shadowColor: Colors.red, // Shadow Color
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only( //borderRadius not work with Gradient Background
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], 
      ),
      
      // Appbar END
      body:Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text('File : lib/pages/appbarwidgetpage.dart',
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('GoBack'),
            ),
          ],
        ),
      )
    );
  }
}