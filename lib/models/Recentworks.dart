import 'package:flutter/material.dart';

class RecentWork {
  final Image image;
  final String description;

  RecentWork({this.image, this.description});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    image: Image(
      image: AssetImage('assets/avi.png'),
    ),
    description: 'New & Fresh Looking Portfolio indeed at the end'
  ),
  RecentWork(
      image: Image(
        image: AssetImage('assets/avi.png'),
      ),
      description: 'New & Fresh Looking Portfolio indeed at the end'
  ),
  RecentWork(
      image: Image(
        image: AssetImage('assets/avi.png'),
      ),
      description: 'New & Fresh Looking Portfolio indeed at the end'
  ),
  RecentWork(
      image: Image(
        image: AssetImage('assets/avi.png'),
      ),
      description: 'New & Fresh Looking Portfolio indeed at the end'
  ),
  RecentWork(
      image: Image(
        image: AssetImage('assets/avi.png'),
      ),
      description: 'New & Fresh Looking Portfolio indeed at the end'
  ),
];