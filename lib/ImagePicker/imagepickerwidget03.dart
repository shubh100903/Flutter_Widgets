import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class Imagepickerwidget03 extends StatefulWidget {
  const Imagepickerwidget03({super.key});

  @override
  State<Imagepickerwidget03> createState() => _Imagepickerwidget03State();
}

class _Imagepickerwidget03State extends State<Imagepickerwidget03> {
  final ImagePicker _picker = ImagePicker();

  File? singleImage;
  List<File> multipleImages = [];

  Uint8List? webSingleImage;
  List<Uint8List> webMultipleImages = [];

  // Pick single image
  Future<void> pickSingleImage() async {
    try {
      if (kIsWeb) {
        // Web
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          withData: true,
        );

        if (result != null) {
          setState(() {
            webSingleImage = result.files.first.bytes;
            webMultipleImages.clear();
            singleImage = null;
            multipleImages.clear();
          });
        } else if (Platform.isAndroid || Platform.isIOS) {
          // Mobile
          final XFile? photo = await _picker.pickImage(
            source: ImageSource.gallery,
          );

          if (photo != null) {
            setState(() {
              singleImage = File(photo.path);
              multipleImages.clear();
              webSingleImage = null;
              webMultipleImages.clear();
            });
          }
        } else {
          // Desktop
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: FileType.image,
          );

          if (result != null && result.files.single.path != null) {
            setState(() {
              singleImage = File(result.files.single.path!);
              multipleImages.clear();
              webSingleImage = null;
              webMultipleImages.clear();
            });
          }
        }
      }
    } catch (e) {
      print('Error picking single image: $e');
    }
  }

  // pick multiple images
  Future<void> pickMultipleImages() async {
    try {
      if (kIsWeb) {
        // web
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          allowMultiple: true,
          withData: true,
        );

        if (result != null) {
          setState(() {
            webMultipleImages = result.files.map((e) => e.bytes!).toList();
            webSingleImage = null;
            singleImage = null;
            multipleImages.clear();
          });
        }
      } else if (Platform.isAndroid || Platform.isIOS) {
        // mobile
        final List<XFile>? photos = await _picker.pickMultiImage();

        if (photos != null) {
          setState(() {
            multipleImages = photos.map((e) => File(e.path)).toList();
            singleImage = null;
            webSingleImage = null;
            webMultipleImages.clear();
          });
        }
      } else {
        // Desktop
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          allowMultiple: true,
        );

        if (result != null) {
          setState(() {
            multipleImages = result.files
                .where((e) => e.path != null)
                .map((e) => File(e.path!))
                .toList();
            singleImage = null;
            webSingleImage = null;
            webMultipleImages.clear();
          });
        }
      }
    } catch (e) {
      print("Error picking multiple images: $e");
    }
  }

  // Build Image UI
  Widget buildImagePreview() {
    // web multiple
    if (kIsWeb && webMultipleImages.isNotEmpty) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: webMultipleImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Image.memory(
              webMultipleImages[index],
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          );
        },
      );
    }

    // web single
    if (kIsWeb && webSingleImage != null) {
      return Image.memory(webSingleImage!);
    }

    // multiple
    if (multipleImages.isNotEmpty) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: multipleImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Image.file(
              multipleImages[index],
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          );
        },
      );
    }

    // single
    if (singleImage != null) {
      return Image.file(singleImage!);
    }

    return const Text('No image selected');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image picker widget 03'),
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
            child: Center(child: buildImagePreview()),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: pickSingleImage, child: const Text('Pick Single Image')),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: pickMultipleImages, child: const Text('Pick Multiple Images'))
        ],
      ),
    );
  }
}
