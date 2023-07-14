import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class CreateMarquee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Marquee(
          text: 'text',
          textScaleFactor: 4,
          blankSpace: 200,
          scrollAxis: Axis.horizontal,
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          velocity: 100,
          fadingEdgeEndFraction: 0.9,
          startAfter: const Duration(seconds: 1),
          pauseAfterRound: const Duration(seconds: 5),
          numberOfRounds: 3,
        ),
      ),
    );
  }
}
