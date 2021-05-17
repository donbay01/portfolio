import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 50),
        child: Container(
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('About Me', style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('I enjoy solving problems with clean scalable\nsolutions. I have a genuine passion for building \nmodern, mobile and web applications', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            wordSpacing: 2,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                      Text('I currently work with @UK-NigeriaTechHub where i build \nCross platform IOS and Android applications using Flutter as my Stack. '
                          '\nI am Fluent in Java, Kotlin and Dart programming languages while \nusing Adobe XD and Figma for my user interface . \nBringing beautiful UI designs and innovative ideas to life is my passion. ', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          wordSpacing: 2,
                          fontWeight: FontWeight.w300
                      ),),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Experience(numOfExp: '03',),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.orange,width: 1.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                          child: Text(
                            'Download CV',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        )
                    ),
                    SizedBox(width: 30,),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.orange,width: 1.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                          child: Text(
                            'Hire Me',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({
    Key key, this.numOfExp,
  }) : super(key: key);

  final String numOfExp;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,6),
            blurRadius: 10,
            color: Colors.orange.withOpacity(0.3)
        )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Text(numOfExp,
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.pink,
                shadows:  [
                  BoxShadow(
                    offset:  Offset(0,5),
                    blurRadius: 10,
                    color: Colors.white
                  )
                ]
              ),),
              Text(numOfExp,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
                color: Colors.white
              ),)
            ],
          ),
          SizedBox(height: 10,),
          Text('Years of Experience',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),)
        ],
      ),
    );
  }
}
