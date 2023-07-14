import 'package:flutter/material.dart';

//14
//to make scrollable wheel

class CreateWheel extends StatelessWidget {
  List li = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
            itemExtent: 50,
            children: li.map((e) {
              int index = li.indexOf(e);
              index >= 16 ? index -= 16 : e;
              return (Container(
                decoration: BoxDecoration(
                  color: Colors.primaries[index],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    e.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
              ));
            }).toList()),
      ),
    );
  }
}
