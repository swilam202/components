import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

//--12--

class CreateToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('click me!'),
          onPressed: () {
            showToast(
              'This is normal toast with animation',
              context: context,
              animation: StyledToastAnimation.scale,
              reverseAnimation: StyledToastAnimation.fade,
              position: const StyledToastPosition(
                  align: Alignment.bottomCenter, offset: 120),
              animDuration: const Duration(seconds: 1),
              duration: const Duration(seconds: 4),
              curve: Curves.elasticOut,
              reverseCurve: Curves.linear,
            );
          },
        ),
      ),
    );
  }
}
