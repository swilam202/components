import 'package:flutter/material.dart';

class CreateSwitch extends StatefulWidget {

  @override
  State<CreateSwitch> createState() => _CreateSwitchState();
}

class _CreateSwitchState extends State<CreateSwitch> {

  bool swval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          activeColor: Colors.green,
          activeTrackColor: Colors.red,
          value: swval,
          onChanged: (val) {
           setState(() {
             swval = val;
           });
          },
        ),
      ),
    );
  }
}
