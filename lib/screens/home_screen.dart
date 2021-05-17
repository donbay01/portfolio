import 'package:ebuka_portofolio/aboutpage/about.dart';
import 'package:ebuka_portofolio/components/app_bar.dart';
import 'package:ebuka_portofolio/glass.dart';
import 'package:flutter/material.dart';

import '../homeWidget.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeWidget(size: size),
          AboutPage(),
        ],
      ),
    );
  }
}



