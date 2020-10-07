import 'package:flutter_app/models/location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);


  static List<Location> fetchAll() {
    return [
      Location(1, 'Japan', 'assets/images/japan.jpeg', [
        LocationFact(
            'Summary', 'it is located in osun state get that into your head'),
        LocationFact('How to get there',
            'omo iya, na juju u go use, egbe lo ma lo, o ma con disaapear lo ba awon iya ninu omi'),
      ]),
      Location(2, 'Osun River', 'assets/images/osun.jpg', [
        LocationFact(
            'Summary', 'it is located in osun state get that into your head'),
        LocationFact('How to get there',
            'omo iya, na juju u go use, egbe lo ma lo, o ma con disaapear lo ba awon iya ninu omi'),
      ]),
      Location(3, 'Abeokuta', 'assets/images/stone.jpg', [
        LocationFact(
            'Summary', 'it is located in osun state get that into your head'),
        LocationFact('How to get there',
            'omo iya, na juju u go use, egbe lo ma lo, o ma con disaapear lo ba awon iya ninu omi'),
      ]),
    ];
  }

    static Location fetchById(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

}
