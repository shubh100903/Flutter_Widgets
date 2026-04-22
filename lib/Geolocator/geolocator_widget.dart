import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  Position? position;

  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'You denied the permission');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'You denied the permission forever');
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;
      latitude = currentPosition!.latitude.toString();
      print(latitude);
      longitude = currentPosition.longitude.toString();
      print(longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeoLocator Widget'),
        backgroundColor: Colors.green,
        elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              position == null ? 'Location' : position.toString(),
              style: TextStyle(fontSize: 20, color: Colors.white), 
            ),
            ElevatedButton(
              onPressed: () {
                fetchposition();
              },
              child: Text('Get Location'),
            ),
          ],
        ),
      ),
    );
  }
}
