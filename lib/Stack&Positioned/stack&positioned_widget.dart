import 'package:flutter/material.dart';


class StackPositionedWidget extends StatelessWidget {
  const StackPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack & Positioned Widget', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
        elevation: 8.0,
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 300, 
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/prof_shubh.png'), fit: BoxFit.cover),
                  border: Border.all(color: Colors.black, width: 2)
                ),
                )
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              )
            // Positioned(bottom: 10, left: 50, child: Container(height: 400, width: 400, color: Colors.yellow,)),
            // Positioned(top: 10, right: 50, child: Container(height: 300, width: 300, color: Colors.green,)),
            // Positioned(top: 100, left: 100, child: Container(height: 200, width: 200, color: Colors.purple,)),
            // Positioned(bottom: 100, right: 100, child: Container(height: 100, width: 100, color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}