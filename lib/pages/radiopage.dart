import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

List<String> options = ["Option 1", "Option 2"];
List<String> gender = ["Male", "Female"];

class _RadioPageState extends State<RadioPage> {
  String currentOption = options[0];
  String currentGender = gender[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            filepath(fullpath: 'lib/pages/radiopage.dart'),
            subheading(heading: 'Example 1 : '),
            ListTile(
                title: Text('Option 1'),
                leading: Radio(
                    value: options[0],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    })),
            ListTile(
                title: Text('Option 2'),
                leading: Radio(
                    value: options[1],
                    groupValue: currentOption,
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    })),
            subheading(heading: 'Example 2 : '),
            Row(
              children: [
                Radio(
                    value: gender[0],
                    groupValue: currentGender,
                    fillColor: MaterialStateColor.resolveWith((states) => Colors
                        .green), //https://www.flutterbeads.com/change-radio-button-color-in-flutter/
                    onChanged: (value) {
                      setState(() {
                        currentGender = value.toString();
                      });
                    }),
                Text('Male'),
                SizedBox(
                  width: 20,
                ),
                Radio(
                    value: gender[1],
                    groupValue: currentGender,
                    // https://www.flutterbeads.com/change-radio-button-color-in-flutter/
                    fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    onChanged: (value) {
                      setState(() {
                        currentGender = value.toString();
                      });
                    }),
                Text('Female'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
