import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Elevated Button'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                overlayColor: MaterialStateProperty.all(
                  Colors.deepPurpleAccent,
                ),
                elevation: MaterialStateProperty.all(10),
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              onPressed: () {},
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Theme.of(context).primaryColor,
                overlayColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                print("Submit All");
              },
              child: Text(
                'Submit All',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
