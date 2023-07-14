import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

//--13--
//to use camera or gallery

class TakeImage extends StatefulWidget {
  @override
  State<TakeImage> createState() => _TakeImageState();
}

class _TakeImageState extends State<TakeImage> {
  File? ima;
  ImagePicker picker = ImagePicker();

  getIamage() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (ima == null) return;
    setState(() => ima = image as File?);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ima == null ? null : Image.file(ima!),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: getIamage,
      ),
    );
  }
}
