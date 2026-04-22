import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Imagepickerwidget extends StatefulWidget {
  const Imagepickerwidget({super.key});

  @override
  State<Imagepickerwidget> createState() => _ImagepickerwidgetState();
}

class _ImagepickerwidgetState extends State<Imagepickerwidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Widget'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Center(
                child: file == null
                    ? Text('Image not picked')
                    : Image.file(File(file!.path)),
              ),
              color: Colors.grey.shade200,
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(
                  source: ImageSource.gallery,
                );
                setState(() {
                  file = photo;
                });
                print('Image picked');
                print(photo!.path);
              },
              child: Text('Pick Image'),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Images picked');
                for (int i = 0; i < photos!.length; i++) {
                  print(files![i].path);
                }
              },
              child: const Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
  }
}
