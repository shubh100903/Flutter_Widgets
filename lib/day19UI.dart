import 'package:flutter/material.dart';

class Day19ui extends StatefulWidget {
  const Day19ui({super.key});

  @override
  State<Day19ui> createState() => _Day19uiState();
}

class _Day19uiState extends State<Day19ui> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 360,
                    //color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                             height: 340,
                             decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(image: Image.asset('assets/images/madrid.jpg').image, fit: BoxFit.cover)
                             ),
                            ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(radius: 50, foregroundImage: AssetImage('assets/images/prof_shubh.png')),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              //color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers and Developers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'This is a random description of the tour',
                    style: TextStyle(fontSize: 15),
                  ),
                  Divider(thickness: 1)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 45,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    rowIconText('20', Icons.favorite_rounded),
                    rowIconText('32', Icons.upload),
                    rowIconText('84', Icons.message_rounded),
                    rowIconText('295', Icons.face_rounded),
                  ],
                )
              ),
              Divider(thickness: 1),
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Madrid is the capital of Spain. It is the third-largest city in the European Union, after London and Berlin. Madrid is known for its rich cultural heritage, vibrant nightlife, and beautiful architecture. The city is home to many famous landmarks, including the Royal Palace, the Prado Museum, and the Retiro Park. Madrid is also a hub for art, music, and cuisine, making it a popular destination for tourists from around the world.'),
              ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        Icon(icon),
      ],
    );
  }
}
