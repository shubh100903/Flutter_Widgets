import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container and SizedBox"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
           height: 100,
           width: 100,
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 10,
                color: Colors.white
              )
            ]
           ),
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),,
          child: Center(child: Container( color: Colors.green,)),
        ),

        //SizedBox(width: 200, height: 200, child: Text("Hello")),
      ),
    );
  }
}
