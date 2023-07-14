import 'package:flutter/material.dart';

//--8--
//this widget to build check box ListTile
//same as the above doesn't work as function but it works otherwise

class CreateCheckboxListTile extends StatefulWidget {

  @override
  State<CreateCheckboxListTile> createState() => _CreateCheckboxListTileState();
}

class _CreateCheckboxListTileState extends State<CreateCheckboxListTile> {

  bool boolVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              value: boolVal,
              onChanged: (valu) {
                setState(() {
                  boolVal = valu!;
                });
              },
              title: Text('title'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('subtitle'),
            )
          ],
        ),
      ),
    );
  }
}
