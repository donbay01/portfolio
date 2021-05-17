import 'package:flutter/material.dart';

import '../menu.dart';


class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [

        ]
      ),
      child: Row(
        children: [
          Image(
              height: 25,
              image: AssetImage(
                'assets/logo.png',
              )),
          Text(
            'onbaytips'.toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Spacer(),
          MenuItem(
            title: 'Home',
            press: () {

            },
          ),
          MenuItem(
            title: 'About',
            press: () {},
          ),
          MenuItem(
            title: 'Services',
            press: () {},
          ),
          MenuItem(
            title: 'Portfolio',
            press: () {},
          ),
          MenuItem(
            active: true,
            title: 'Contact',
            press: () {

            },
          ),
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
    );
  }
}


