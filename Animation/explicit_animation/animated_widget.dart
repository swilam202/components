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

class _AnimatioState extends State<Animatio>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size> anime;

  @override
  void initState() {
    super.initState();
    controller =
    AnimationController(vsync: this, duration: Duration(seconds: 1))
      ..repeat(reverse: true, min: 0.1, max: 1);
    anime = Tween(begin: Size(200, 200), end: Size(150, 300))
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    //this can be used instead of animated builder\\
    //aacontroller.addListener(()=>setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ButtonWithAnimation(width: controller,),
        ),
      ),
    );
  }
}

class ButtonWithAnimation extends AnimatedWidget{
  ButtonWithAnimation({required width}) : super(listenable:width);
  Animation<double> get width => listenable as Animation<double>;

  @override
  Widget build(BuildContext ctx){
    return OutlinedButton(onPressed: (){}, child: Text('A'),style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(width: width.value*3))),);
  }
}