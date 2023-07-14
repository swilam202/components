import 'package:flutter/material.dart';

//--6--
//this Widget to build Radio ListTile

class CreateRadioListTile extends StatefulWidget {
  @override
  State<CreateRadioListTile> createState() => _CreateRadioListTileState();
}

class _CreateRadioListTileState extends State<CreateRadioListTile> {
  int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          RadioListTile(
            value: 3,
            groupValue: radioVal,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) => setState(() {
              radioVal = int.parse(val.toString());
            }),
            title: const Text(
              '3',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: const Text(
              'SubTitle',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          RadioListTile(
            value: 4,
            groupValue: radioVal,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) => setState(() {
              radioVal = int.parse(val.toString());
            }),
            title: const Text(
              '4',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: const Text(
              'SubTitle',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ],
      ),
    ));
  }
}
