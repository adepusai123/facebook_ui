import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ListPhotos extends StatefulWidget {
  @override
  _ListPhotosState createState() => _ListPhotosState();
}

class _ListPhotosState extends State<ListPhotos> {
  File _image;
  List<File> _images = [];

  final picker = ImagePicker();

  Future getImage(int index) async {
    final image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _images[index] = File(image.path);
      print((image.path));
    });
  }

  Future checkPermission() async {
    if (!await Permission.storage.status.isGranted) {
      await Permission.storage.request();
    }
    if (!await Permission.photos.request().isGranted) {
      await Permission.photos.request();
    }
  }

  @override
  void initState() {
    super.initState();
    checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _images.length + 1,
          itemBuilder: (context, index) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    getImage(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: _image == null
                              ? AssetImage("assets/images/sai_img.jpeg")
                              : FileImage(_image),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
