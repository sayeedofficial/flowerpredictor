import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  final picker = ImagePicker();
  
  bool _loading = true;
  // List _output;

  // pickImage() async {
  //   var image = await picker.getImage(source: ImageSource.camera);

  //   if (image == null) return null;

  //   setState(() {
  //     _image = File(image.path);
  //   });
  //   classifyImage(_image);
  // }

  // pickGalleryImage() async {
  //   var image = await picker.getImage(source: ImageSource.gallery);

  //   if (image == null) return null;

  //   setState(() {
  //     _image = File(image.path);
  //   });
  //   classifyImage(_image);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _loading = true;
  //   loadModel().then((value) {
  //     // setState(() {});
  //   });
  // }

  // @override
  // void dispose() {
  //   Tflite.close();
  //   super.dispose();
  // }

  // classifyImage(File image) async {
  //   var output = await Tflite.runModelOnImage(
  //       path: image.path,
  //       numResults: 2,
  //       threshold: 0.5,
  //       imageMean: 127.5,
  //       imageStd: 127.5);

  //   setState(() {
  //     _loading = false;
  //     _output = output;
  //   });
  // }

  // loadModel() async {
  //   await Tflite.loadModel(
  //     model: 'assets/model_unquant.tflite',
  //     labels: 'assets/labels.txt',
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.004, 1],
            colors: [
              Color(0xFFa8e063),
              Color(0xFF56ab2f),
            ],
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Detect Flowers",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 28),
              ),
              Text(
                "Custom Tensorflow CNN",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: _loading
                            ? Container(
                                width: 300,
                                child: Column(
                                  children: [
                                    Image.asset('assets/flower.png'),
                                    SizedBox(
                                      height: 60,
                                    )
                                  ],
                                ),
                              )
                            : Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 300,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        
                                      ),
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
