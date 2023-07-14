import 'package:flutter/material.dart';

//--15--
//to make movable picture

class CreateInteractiveViewer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(50),
          panEnabled: true,
          constrained: true,
          scaleEnabled: true,
          maxScale: 3,
          minScale: 0.5,
          child: Image.asset('image/p6.jpeg'),
        ),
      ),
    );
  }
}
