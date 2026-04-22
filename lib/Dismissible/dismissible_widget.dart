import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Kiwi',
    'Lemon',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Widget'),
        backgroundColor: Colors.purple,
        elevation: 8.0,
      ),
      body: ListView.builder(
        itemCount: fruits.length, 
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index] + ' dismissed'), backgroundColor: Colors.green, duration: Duration(milliseconds: 1500),));
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content : Text(fruits[index] + ' dismissed'), backgroundColor: Colors.red, duration: Duration(milliseconds: 1500),));
              }
            },
            key: Key(fruit),
            background: Container(color: Colors.green),
            secondaryBackground: Container(color: Colors.red),
             child: Card(
               child: ListTile(
                      title: Text(fruits[index], style: TextStyle(fontSize: 20))
                ),
               )
             );
        },
      ),
    );
  }
}
