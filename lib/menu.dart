import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'controller/Menu_controller.dart';



class MenuItem extends StatefulWidget {
  final String title;
  final Function press;
  final bool active;

  const MenuItem({
    Key key,
    @required this.title,
    @required this.press,
    @required this.active,

  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  var _hover = false;
  var isActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      onHover: (hover){
        setState(() {
          _hover = hover;
        });
      },
      child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isActive ? Colors.white : Colors.transparent, width: 3
                )
              )
            ),
            child: Text(
                  widget.title,
                  style: TextStyle(
                    color: _hover ? Colors.orange : Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,),
                ),
          ),
            ),
    );
  }
}