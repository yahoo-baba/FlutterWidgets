import 'package:flutter/material.dart';
import 'package:flutterwidgets/books.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // theme: ThemeData(
      //   // colorSchemeSeed: Colors.blue,
      //   primarySwatch: Colors.blue,
      //   useMaterial3: true,
      // ),
      home: const MyHomePage(title: 'Flutter Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();
  List<Book> books = allWidgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Widget',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blueAccent),
                  )),
              onChanged: searchWidget,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: ((context, index) {
                final book = books[index];

                return Card(
                  color: Colors.lightBlue[200],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.article),
                    title: Text(book.title),
                    minLeadingWidth: 5,
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () => Navigator.push(
                      context,
                      book.gotoPage(), // gotoPage() defines in books.dart
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  void searchWidget(String query) {
    final suggestions = allWidgets.where((book) {
      final booksTitle = book.title.toLowerCase();
      final input = query.toLowerCase();

      return booksTitle.contains(input);
    }).toList();

    setState(() => books = suggestions);
  }

  // MaterialPageRoute gotoPage(String pagename){
  //   return MaterialPageRoute(builder: (context){
  //     switch (pagename) {
  //       case 'AppbarWidgetPage': return const AppbarWidgetPage();
  //       case 'TextWidgetPage': return const TextWidgetPage();
  //       case 'CenterWidgetPage': return const CenterWidgetPage();
  //       default: return const AppbarWidgetPage();
  //     }
  //   });
  // }
}
