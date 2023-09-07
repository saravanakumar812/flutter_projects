import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  File? Pickerimage;

  final ImagePicker picker = ImagePicker();
  Future pickedImageFromGallery() async {
    try {
      var xFile = await picker.pickImage(source: ImageSource.gallery);
      final image1 = xFile;
      if (image1 == null) return;
      final imageTemp = File(image1.path);
      setState(() {
        this.Pickerimage = imageTemp;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future pickedImageFromCamera() async {
    try {
      final image2 = await picker.pickImage(source: ImageSource.camera);
      if (image2 == null) return;
      final imageTemp = File(image2.path);
      setState(() {
        this.Pickerimage = imageTemp;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Picker'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      pickedImageFromGallery();
                    },
                    icon: const Icon(Icons.image)),
                IconButton(
                    onPressed: () {
                      pickedImageFromCamera();
                    },
                    icon: const Icon(Icons.camera)),
                Container(
                  child: Pickerimage != null
                      ? Image.file(Pickerimage!)
                      : Text('No Image'),
                )
              ],
            ),
          ),
        ));
  }
}
