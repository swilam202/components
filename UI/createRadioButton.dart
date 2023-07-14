import 'package:flutter/material.dart';

//--5--
//this column to create radio button

class CreateRadioButton extends StatefulWidget {
  @override
  State<CreateRadioButton> createState() => _CreateRadioButtonState();
}

class _CreateRadioButtonState extends State<CreateRadioButton> {
  String result = '';

  int radioVal = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: radioVal,
                  onChanged: (val) => setState(() {
                    radioVal = int.parse(val.toString());
                  }),
                ),
                const Text('3'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: radioVal,
                  onChanged: (val) => setState(() {
                    radioVal = int.parse(val.toString());
                  }),
                ),
                const Text('4'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
