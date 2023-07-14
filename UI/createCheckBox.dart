import 'package:flutter/material.dart';

//--7--
//this widget to build check box
//note that it doesn't work as function but it works otherwise

class CreateCheckBox extends StatefulWidget {

  @override
  State<CreateCheckBox> createState() => _CreateCheckBoxState();
}

class _CreateCheckBoxState extends State<CreateCheckBox> {

  bool val1 = false;
  bool val2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: val1,
                    onChanged: (value) {
                      setState(() {
                        val1 = value!;
                      });
                    }),
                Text('yes'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: val2,
                    onChanged: (value) {
                      setState(() {
                        val2 = value!;
                      });
                    }),
                Text('no'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
