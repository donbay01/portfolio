import 'package:carousel_slider/carousel_slider.dart';
import 'package:ebuka_portofolio/models/Recentworks.dart';

import 'package:flutter/material.dart';

class MyWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 600,
      child: NoonLoopingDemo(),
    );
  }
}

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  initialPage: 2,
                  autoPlay: true,
                  viewportFraction: 0.7
                ),
                items: [
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/uifive.png')
                        )
                      ),
                      child: Center(child: Text('LOGISTICS APPLICATION',
                        style: TextStyle(
                          color: Colors.white,fontSize: 25, fontWeight:FontWeight.w700
                        ),)),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/uifour.png')
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/uieight.png')
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/uithree.png')
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/uisix.png')
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/uitwo.png')
                          )
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ],
    );
  }
}