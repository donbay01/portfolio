import 'dart:ui';
import 'package:ebuka_portofolio/models/Recentworks.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ebuka_portofolio/models/Recentworks.dart';
import 'package:ebuka_portofolio/myworks.dart';
import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  const Glass({ Key key, @required this.size,}) : super(key: key);
  
  final Size size;
  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.white.withOpacity(0.05),
          height: 500,
          width: 900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Hello!',
                style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("I'm Ebuka Ekwenem",
                style: TextStyle(
                  letterSpacing: 0,
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Text('Front-end developer',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.pink),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.orange,width: 1.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      primary: Colors.white,

                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialog();
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                      child: Text(
                        'View my works',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String buttonText;

  CustomDialog({this.buttonText,});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.red,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return MyWorks();
  }
}