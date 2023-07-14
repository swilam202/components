import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CreateCarouselSliderBuilder extends StatelessWidget {
  List images = ['image/p6.jpeg','image/p6.jpeg','image/p6.jpeg','image/p6.jpeg',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: images.map((e) {
            return Container(
              child: Image.asset(e.toString()),
            );
          }).toList(),
          options: CarouselOptions(
              onPageChanged: null,
              height: 200,
              initialPage: 0,
              //if you want tp play pictures reversal mode
              //reverse: true
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 1),
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              pauseAutoPlayOnTouch: true,
              scrollDirection: Axis.vertical),
        ),
      ),
    );
  }
}
