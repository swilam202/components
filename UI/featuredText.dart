import 'package:flutter/material.dart';

//--4--
// this column has new features to the texts like selecting and so on

class FeaturedText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 30,
            color: Colors.green,
            child: const Text(
              'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 30,
            color: Colors.green,
            child: const Text(
              'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
              overflow: TextOverflow.fade,
            ),
          ),
          Container(
            height: 30,
            color: Colors.green,
            child: const Text(
              'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
              //softWrap: true,
            ),
          ),
          Container(
            height: 30,
            color: Colors.green,
            child: const Text(
              'alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only alert this isa garbage text to test the overflow functions in the texts only',
              overflow: TextOverflow.visible,
            ),
          ),
          const SelectableText(
            'alert this isa garbage text to test the cursor functions in the texts only alert this isa garbage text to test the cursor functions in the texts only alert this isa garbage text to test the cursor functions in the texts only',
            showCursor: true,
            cursorColor: Colors.black,
            cursorWidth: 3,
            cursorHeight: 4,
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
              selectAll: true,
              paste: true,
            ),
          ),
        ],
      ),
    ));
  }
}
