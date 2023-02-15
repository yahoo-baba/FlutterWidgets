import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widget'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/textfieldpage.dart'),
              subheading(heading: 'Example 1 : '),
              // https://www.flutterbeads.com/textfield-textformfield-border-in-flutter/
              // https://api.flutter.dev/flutter/material/InputDecoration-class.html
              // https://www.flutterbeads.com/set-height-and-width-of-textfield-in-flutter/
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder( 
                    borderSide: BorderSide(
                        width: 3, color: Colors.blue), 
                  ),
                ),
              ),
              subheading(heading: 'Example 2 : '),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(
                        width: 3, //<-- SEE HERE
                        color: Colors.blue,),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(
                        width: 3, //<-- SEE HERE
                        color: Colors.black,),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              subheading(heading: 'Example 3 : '),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder( 
                    borderSide: BorderSide(
                        width: 3, color: Colors.blueAccent), 
                  ),
                ),
              ),
              subheading(heading: 'Example 4 : '),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Hint Text',
                  errorText: 'Error Text',
                  border: OutlineInputBorder(),
                ),
              ),
              subheading(heading: 'Example 5 : '),
              TextFormField(
                initialValue: 'abc',
                decoration: const InputDecoration(
                  prefix: Text('Prefix'),
                  suffix: Text('Suffix'),
                  border: OutlineInputBorder(),
                ),
              ),
              subheading(heading: 'Example 6 : '),
              TextFormField(
                initialValue: 'abc',
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor:
                      MaterialStateColor.resolveWith((Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused)) {
                      return Colors.green;
                    }
                    if (states.contains(MaterialState.error)) {
                      return Colors.red;
                    }
                    return Colors.grey;
                  }),
                ),
              ),
              subheading(heading: 'Example 7 : '),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),
              subheading(heading: 'Example 8 : minLines & maxLines'),
              // https://www.flutterbeads.com/multiline-textfield-in-flutter/
              TextField(
                decoration: InputDecoration(labelText: 'Enter Message'),
                keyboardType: TextInputType.multiline,
                minLines: 1, // <-- SEE HERE
                maxLines: 5, // <-- SEE HERE
              )
            ],
          ),
        ),
      ),
    );
  }
}
