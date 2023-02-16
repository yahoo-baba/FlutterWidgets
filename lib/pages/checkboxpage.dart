import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            filepath(fullpath: 'lib/pages/checkboxpage.dart'),
            subheading(heading: 'Example 1 : '),
            // Checkbox(
            //   checkColor: Colors.white,
            //   fillColor: MaterialStateProperty.resolveWith(getColor),
            //   value: isChecked,
            //   onChanged: (bool? value) {
            //     setState(() {
            //       isChecked = value!;
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
