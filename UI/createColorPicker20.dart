import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CreateColorPicker extends StatefulWidget {

  @override
  State<CreateColorPicker> createState() => _ColorAppState();
}

class _ColorAppState extends State<CreateColorPicker> {
  Color chosenColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: chosenColor,
            title: Text(
              'Colors',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: useWhiteForeground(chosenColor)
                      ? Colors.white
                      : Colors.black),
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor:
              useWhiteForeground(chosenColor) ? Colors.white : Colors.black,
              tabs: const [
                Tab(text: 'Block Picker'),
                Tab(text: 'Slider Picker'),
                Tab(text: 'Material Picker'),
                Tab(text: 'Color Picker'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BlockPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
              ),
              SlidePicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableAlpha: true,
                showSliderText: true,
                showParams: true,
                showLabel: true,
                showIndicator: true,
                displayThumbColor: true,
              ),
              MaterialPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableLabel: true,
                portraitOnly: true,
              ),
              ColorPicker(
                pickerColor: chosenColor,
                onColorChanged: (color) => setState(() => chosenColor = color),
                enableAlpha: true,
                showLabel: true,
                displayThumbColor: false,
                portraitOnly: true,
                hexInputBar: true,
              ),
            ],
          )),
    );
  }
}