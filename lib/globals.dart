import 'package:flutter/cupertino.dart';

List<Map<String, dynamic>> videos = [
  {
    'id': 1,
    'img': const AssetImage('assets/images/street.jpeg'),
    'name': "Street view",
    'video': 'assets/video/street.mp4',
  },
  {
    'id': 2,
    'img': const AssetImage('assets/images/nature.jpeg'),
    'name': "Nature",
    'video': 'assets/video/nature.mp4',
  },
  {
    'id': 3,
    'img': const AssetImage('assets/images/beach.jpeg'),
    'name': "Beach",
    'video': 'assets/video/beach.mp4',
  },
  {
    'id': 4,
    'img': const AssetImage('assets/images/animal.jpeg'),
    'name': "Animal",
    'video': 'assets/video/animal.mp4',
  },
];
String? videoLink;
String? Name;

class Globals {
  static int? image;
}
