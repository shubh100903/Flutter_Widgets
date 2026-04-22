import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Imagewidget extends StatefulWidget {
  const Imagewidget({super.key});

  @override
  State<Imagewidget> createState() => _ImagewidgetState();
}

class _ImagewidgetState extends State<Imagewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
        backgroundColor: Colors.red,
        elevation: 8.0,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          child: CachedNetworkImage(
            imageUrl: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFyaXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}