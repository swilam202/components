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
  late Animation<AlignmentGeometry> anime;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 1))..repeat();
    anime = Tween(begin:Alignment.topRight,end:Alignment.bottomLeft).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
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
          child: AlignTransition(
              alignment: anime,
              child: FlutterLogo(size: 20,)
          ),
        ),
      ),
    );
  }
}
