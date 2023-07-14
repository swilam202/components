import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class CreateEasySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: EasySplashScreen(
          logo: Image.asset('image/p2.jpeg'),
          logoWidth: 100,
          loaderColor: Colors.red,
          loadingText: const Text('Loading...'),
          title: const Text('Please wait'),
          durationInSeconds: 5,
          backgroundColor: Colors.grey,
          // navigator: App(),
        ),
      ),
    );
  }
}
