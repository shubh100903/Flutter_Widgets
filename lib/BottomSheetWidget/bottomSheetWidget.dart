import 'package:flutter/material.dart';

class Bottomsheetwidget extends StatelessWidget {
  const Bottomsheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Widget'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 8.0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              ),
              backgroundColor: Theme.of(context).primaryColor,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Option 1'),
                      subtitle: Text('Description for option 1'),
                    ),
                    ListTile(
                      title: Text('Option 2'),
                      subtitle: Text('Description for option 2'),
                    ),
                    ListTile(
                      title: Text('Option 3'),
                      subtitle: Text('Description for option 3'),
                    ),
                    ListTile(
                      title: Text('Option 4'),
                      subtitle: Text('Description for option 4'),
                    ),
                    ListTile(
                      title: Text('Option 5'),
                      subtitle: Text('Description for option 5'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
