import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class Imagepickerwidget02 extends StatefulWidget {
  const Imagepickerwidget02({super.key});

  @override
  State<Imagepickerwidget02> createState() => _Imagepickerwidget02State();
}

class _Imagepickerwidget02State extends State<Imagepickerwidget02> {
  final ImagePicker _picker = ImagePicker();

  File? imageFile;
  Uint8List? webImage;

  Future<void> pickImage() async {
    try {
      // For Web platform, we use FilePicker to pick images as ImagePicker does not support web.
      if (kIsWeb) {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          withData: true,
        );

        if (result != null) {
          setState(() {
            webImage = result.files.first.bytes;
          });
        } else if (Platform.isAndroid || Platform.isIOS) {
          final XFile? photo = await _picker.pickImage(
            source: ImageSource.gallery,
          );

          if (photo != null) {
            setState(() {
              imageFile = File(photo.path);
            });
          }
        } else {
          // WINDOWS, MACOS, LINUX
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: FileType.image,
            withData: true,
          );

          if (result != null && result.files.single.path != null) {
            setState(() {
              imageFile = File(result.files.single.path!);
            });
          }
        }
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    if (kIsWeb && webImage != null) {
      imageWidget = Image.memory(webImage!);
    } else if (imageFile != null) {
      imageWidget = Image.file(imageFile!);
    } else {
      imageWidget = Text('Image not picked');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Widget 02'),
        backgroundColor: Colors.green,
        elevation: 8.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey.shade300,
            child: Center(child: imageWidget),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: pickImage , child: const Text('Pick Image')),
        ],
      ),
    );
  }
}
