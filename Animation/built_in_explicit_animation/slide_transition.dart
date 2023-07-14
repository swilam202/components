//to make animation move from the start of the screen and even go beyound the screen

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animatio(),
    );
  }
}

class Animatio extends StatefulWidget {
  @override
  State<Animatio> createState() => _AnimatioState();
}

class _AnimatioState extends State<Animatio> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<Offset> anime;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 1))..repeat();
    //the coordinates the animation will start and end
    anime = Tween(begin:Offset(-1,-1),end:Offset(1,1)).animate(CurvedAnimation(parent: controller, curve: Curves.bounceInOut));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.grey,
          child: SlideTransition(
              position: anime,
              child: FlutterLogo(size: 20,)
          ),
        ),
      ),
    );
  }
}
