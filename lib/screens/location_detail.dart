import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/screens/image_banner.dart';
import 'package:flutter_app/screens/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           ImageBanner("assets/images/location.jpeg"),
           TextSection(Colors.red),
           TextSection(Colors.green),
           TextSection(Colors.blue),
          ],
        ));
  }
}
