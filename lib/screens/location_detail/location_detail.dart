import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/screens/location_detail/image_banner.dart';
import 'package:flutter_app/screens/location_detail/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationID);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name), 
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
