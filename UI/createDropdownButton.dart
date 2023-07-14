import 'package:flutter/material.dart';

//--10--
//to build the Drop Down Menu(Button)

class CreateDropdownButton extends StatefulWidget {
  @override
  State<CreateDropdownButton> createState() => _CreateDropdownButtonState();
}

class _CreateDropdownButtonState extends State<CreateDropdownButton> {
  final List items = ['a', 'b', 'c', 'd'];

  String dropVal = 'a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          //dropVal must have a value of the list or it will cause null error
          value: dropVal.toString(),
          hint: Text('hintTxt'),
          items: items.map((e) {
            return (DropdownMenuItem(
              child: Text(e.toString()),
              value: e.toString(),
            ));
          }).toList(),
          onChanged: (val) => setState(() => dropVal = val.toString()),
        ),
      ),
    );
  }
}
