import 'package:flutter/material.dart';

class TextWidgetPage extends StatelessWidget {
  const TextWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text Widget Page'),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'File : lib/pages/textwidgetpage.dart',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                // textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 20),
              Text(
                'Example One',
                //textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 10,
                  color: Colors.blue,
                  // backgroundColor: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  // height: 4,  // Work as a Line-height
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  // decorationThickness: 1.0,
                  // decorationColor: Colors.black,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Example Two',
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.amberAccent,
                  wordSpacing: 30,
                  height: 1.4, // Work as a Line-height
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Example Three : Shadow',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                  shadows: [Shadow(color: Colors.black, offset: Offset(1, 1))],
                ),
              ),
              // SizedBox(height: 50),
              //  Container(
              //   padding: EdgeInsets.only(
              //     bottom: 5, // Space between underline and text
              //   ),
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //     color: Colors.blue,
              //     width: 1.0, // Underline thickness
              //   ))),
              //   child: Text(
              //     "Example Four: Underline with Gap",
              //     style: TextStyle(color: Colors.black, fontSize: 20),
              //   ),
              // ),
              SizedBox(height: 50),
              Text(
                'Example Five : Rich Text',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                    text: 'By using our mobile app, you agree to our ',
                    children: [
                      TextSpan(
                          text: 'Term of Use',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.green,
                          )),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.green,
                          )),
                    ]),
              ),
              SizedBox(height: 50),
              Text(
                'Example Six : Paragraph',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo turpis pretium, finibus mauris eget, fringilla urna. Duis faucibus orci in fermentum laoreet. Duis porta, tortor eget rutrum volutpat, risus nisi mollis neque, sed tempor lorem ligula et tellus. Nunc eget mauris mi.',
                style: TextStyle(fontSize: 18, height: 1.5),
                textAlign: TextAlign.justify,
                textWidthBasis: TextWidthBasis.longestLine,
              ),
              SizedBox(height: 50),
              Text(
                'Example Seven : Paragraph with MaxLines',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo turpis pretium, finibus mauris eget, fringilla urna. Duis faucibus orci in fermentum laoreet. Duis porta, tortor eget rutrum volutpat, risus nisi mollis neque, sed tempor lorem ligula et tellus. Nunc eget mauris mi.',
                style: TextStyle(fontSize: 18, height: 1.5),
                textAlign: TextAlign.justify,
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // overflow: TextOverflow.fade, 
              ),
            ],
          ),
        ));
  }
}
