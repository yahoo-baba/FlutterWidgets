import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ExpansionTileListview extends StatefulWidget {
  const ExpansionTileListview({super.key});

  @override
  State<ExpansionTileListview> createState() => _ExpansionTileListviewState();
}

class _ExpansionTileListviewState extends State<ExpansionTileListview> {
  // Generate a list of list items
  // In real app, data often is fetched from an API or a database
  final List<Map<String, dynamic>> _items = List.generate(
      50,
      (index) => {
            "id": index,
            "title": "Item $index",
            "content":
                "This is the main content of item $index. It is very long and you have to expand the tile to see it."
          });

  // This function is called when a "Remove" button associated with an item is pressed
  void _removeItem(int id) {
    setState(() {
      _items.removeWhere((element) => element['id'] == id);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(milliseconds: 600),
        content: Text('Item with id #$id has been removed')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile with ListView Widget'),
      ),
       body: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (_, index) {
              final item = _items[index];
              return Card(
                // this key is required to save and restore ExpansionTile expanded state
                key: PageStorageKey(item['id']),
                color: Colors.amber.shade200,
                elevation: 4,
                child: ExpansionTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  expandedCrossAxisAlignment: CrossAxisAlignment.end,
                  maintainState: true,
                  title: Text(item['title']),
                  // contents
                  children: [
                    Text(item['content']),
                    // This button is used to remove this item
                    TextButton.icon(
                      onPressed: () => _removeItem(item['id']),
                      icon: const Icon(Icons.delete),
                      label: const Text(
                        'Remove',
                      ),
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                    )
                  ],
                ),
              );
            }),
      
    );
  }
}
