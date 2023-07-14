import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CreateFlushBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Click me!'),
          onPressed: () {
            Flushbar(
              icon: const Icon(Icons.warning),
              shouldIconPulse: false,
              mainButton: const Icon(Icons.close),
              onTap: (ctx) => Navigator.of(context).pop(),
              duration: const Duration(seconds: 3),
              borderRadius: BorderRadius.circular(10),
              borderColor: Colors.teal,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              title: 'title',
              //titleText: Text(title),
              titleColor: Colors.red,
              titleSize: 20,
              message: 'message',
              //messageText: Text(message),
              messageColor: Colors.green,
              messageSize: 20,
              backgroundColor: Colors.yellowAccent,
            ).show(context);
          },
        ),
      ),
    );
  }
}
