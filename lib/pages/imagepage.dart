import 'package:flutter/material.dart';
import 'package:flutterwidgets/pages/styling/filepath.dart';
import 'package:flutterwidgets/pages/styling/subheading.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              filepath(fullpath: 'lib/pages/imagepage.dart'),
              subheading(heading: 'Example 1 : Asset Image'),
              Image.asset(
                'assets/doremon-short.jpeg',
                fit: BoxFit.cover,
                height: 150,
                width: 130,
              ),
              subheading(heading: 'Example 2 : Network Image'),
              Image.network('https://picsum.photos/200',
                  fit: BoxFit.cover, width: 130, height: 150.0),
              subheading(heading: 'Example 3 : FadeInImage with Placeholder'),
              //https://api.flutter.dev/flutter/widgets/FadeInImage-class.html
              // https://docs.flutter.dev/cookbook/images/fading-in-images
              FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                image: 'https://picsum.photos/200?image=9',
                width: 130,
                fit: BoxFit.cover,
              ),
              subheading(heading: 'Example 4 : Image with Border Radius'),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/doremon-short.jpeg',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 130,
                ),
              ),
              subheading(heading: 'Example 5 : Image in CircleAvatar Widget'),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/doremon-short.jpeg'),
                radius: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
