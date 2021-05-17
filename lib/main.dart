import 'package:ebuka_portofolio/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Raleway',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.orange,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              )
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.orange,
              )
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: HomeScreen(),
        )
    );
  }
}

