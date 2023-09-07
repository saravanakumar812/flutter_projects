import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Videoplayer(),
    );
  }
}

class Videoplayer extends StatefulWidget {
  const Videoplayer({super.key});

  @override
  State<Videoplayer> createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  // ignore: non_constant_identifier_names
  File? PickedImage;

  pickImageFromGallery() async {
    try {
      final image1 = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image1 == null) return;

      final imageTemp = File(image1.path);
      setState(() {
        // ignore: unnecessary_this
        this.PickedImage = imageTemp;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  File? video;
  late VideoPlayerController _videoPlayerController;

  final picker = ImagePicker();

// This funcion will helps you to pick a Video File
  pickVideo() async {
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    video = File(pickedFile!.path);

    _videoPlayerController = VideoPlayerController.file(video!)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _videoPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                child: PickedImage != null
                    ? Image.file(PickedImage!)
                    : const Text('No Image'),
              ),
              Column(
                children: <Widget>[
                  if (video != null)
                    _videoPlayerController.value.isInitialized
                        ? AspectRatio(
                            aspectRatio:
                                _videoPlayerController.value.aspectRatio,
                            child: VideoPlayer(_videoPlayerController),
                          )
                        : Container()
                  else
                    const Text(
                      "Click on Pick Video to select video",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ElevatedButton(
                    onPressed: () {
                      pickVideo();
                    },
                    child: const Text("Pick Video From Gallery"),
                  ),
                  IconButton(
                      onPressed: () {
                        pickImageFromGallery();
                      },
                      icon: const Icon(Icons.image)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
