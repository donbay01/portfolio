import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ebuka Ekwenem",
    review: review,
    userPic: "assets/avi.png",
    color: Colors.white,
  ),
  Feedback(
    id: 2,
    name: "Ebuka Ekwenem",
    review: review,
    userPic: "assets/avi.png",
    color: Colors.white,
  ),
  Feedback(
    id: 3,
    name: "Ebuka Ekwenem",
    review: review,
    userPic: "assets/avi.png",
    color: Colors.white,  
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';