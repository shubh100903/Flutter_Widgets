import 'package:flutter/material.dart';

class Alertdialogbox extends StatelessWidget {
  const Alertdialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDilogBox Widget'),
        backgroundColor: Colors.red,
        elevation: 8.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        scrollable: true,
        backgroundColor: Colors.grey[800],
        elevation: 8.0,
        title: Text('Alert Dialog'),
        content: ListBody(
          children: [
            Text('This is an alert dialog.'),
            Text('You can add more content here.'),
          ],
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Approve')),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
