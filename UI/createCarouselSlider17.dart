import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CreateCarouselSlider extends StatefulWidget {

  @override
  State<CreateCarouselSlider> createState() => _CreateCarouselSliderState();
}

class _CreateCarouselSliderState extends State<CreateCarouselSlider> {
  List images = ['image/p6.jpeg','image/p6.jpeg','image/p6.jpeg','image/p6.jpeg',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, int index, int realIndex) {
            return Container(
              child: Image.asset(images[index].toString()),
            );
          },
          options: CarouselOptions(
              height: 200,
              initialPage: 0,
              //if you want to play pictures reversal mode
              //reverse: true
              autoPlay: true,
              autoPlayInterval: const Duration(microseconds: 500),
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              pauseAutoPlayOnTouch: true,
              scrollDirection: Axis.horizontal),
        ),
      ),
    );
  }
}
