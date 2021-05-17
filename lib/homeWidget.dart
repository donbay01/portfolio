import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'glass.dart';


class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.overlay),
              image: AssetImage('assets/backview.png'),
              fit: BoxFit.cover
          )
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          LogoAndGlass(size: size),
          Positioned(bottom: 100, right: 200,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uieight.png'),
          )),
          Positioned(bottom: 100, right: 400,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uitwo.png'),
          )),
          Positioned(bottom: 250, right: 200,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uithree.png'),
          )),
          Positioned(bottom: 250, right: 400,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uisix.png'),
          )),
          Positioned(bottom: 350, right: 300,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uifour.png'),
          )),
          Positioned(bottom: 50, right: 300,child: Container(
            constraints: BoxConstraints( maxWidth: 200, maxHeight: 500),
            child: Image.asset('assets/uiseven.png'),
          )),
        ],
      ),
    );
  }
}


class LogoAndGlass extends StatelessWidget {
  const LogoAndGlass({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        Spacer(),
        Glass(size: size,),
        Spacer(flex: 3,),
      ],
    );
  }
}