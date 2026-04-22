import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Widget'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.deepPurpleAccent,
                  onPressed: () {
                    print('Undo action');
                   },
                ),
                behavior: SnackBarBehavior.floating,
                content: Text(
                  'This is an error!',
                  style: TextStyle(color: Colors.red),
                ),
                duration: const Duration(milliseconds: 1500),
                backgroundColor: Colors.white,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text(
              'Show snack bar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
