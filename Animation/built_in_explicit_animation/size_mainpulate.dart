//change the size of the flutter logo by animated builder

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
      ..repeat(reverse: true, min: 0.5, max: 0.7);
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
          child: Column(
            children: [
              AnimatedBuilder(
                builder: (context, _) => FlutterLogo(
                  size: anime.value.height,
                ),
                animation: anime,
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => controller.forward(),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15))),
                    child: const Text('wider'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => controller.reverse(),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15))),
                    child: const Text('narrower'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
