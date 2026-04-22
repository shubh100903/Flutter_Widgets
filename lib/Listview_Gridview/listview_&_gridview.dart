import 'package:flutter/material.dart';

class ListviewAndGridview extends StatefulWidget {
  const ListviewAndGridview({super.key});

  @override
  State<ListviewAndGridview> createState() => _ListviewAndGridviewState();
}

class _ListviewAndGridviewState extends State<ListviewAndGridview> {
  List<String> fruits = [
    'apple',
    'banana',
    'grapes',
    'orange',
    'pineapple',
    'mango',
    'kiwi',
    'strawberry',
    'watermelon',
    'peach',
  ];
  Map fruitPerson = {
    'fruits': [
      'apple',
      'banana',
      'grapes',
      'orange',
      'pineapple',
      'mango',
      'kiwi',
      'strawberry',
      'watermelon',
      'peach',
    ],
    'person': [
      'john',
      'doe',
      'smith',
      'jane',
      'doe',
      'michael',
      'johnson',
      'emily',
      'davis',
      'william',
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Colors.red,
        elevation: 8.0,
      ),
      body: Container(
        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(fruits[index]),
              ),
            );
          },
        ),
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 2/3),
        //   children: [
        //     Card(child: ListTile(title: Center(child: Text("Apple")))),
        //     Card(child: ListTile(title: Center(child: Text("Banana")))),
        //     Card(child: ListTile(title: Center(child: Text("Grapes")))),
        //     Card(child: ListTile(title: Center(child: Text("Orange")))),
        //     Card(child: ListTile(title: Center(child: Text("Pineapple")))),
        //     Card(child: ListTile(title: Center(child: Text("Mango")))),
        //     Card(child: ListTile(title: Center(child: Text("Kiwi")))),
        //     Card(child: ListTile(title: Center(child: Text("Strawberry")))),
        //   ],
        // ),
        // child: ListView.builder(
        //   itemCount: fruitPerson['fruits'].length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print(fruitPerson['fruits'][index]);
        //           print(fruitPerson['person'][index]);
        //         },
        //         leading: Icon(Icons.food_bank),
        //         title: Text(fruitPerson['fruits'][index]),
        //         subtitle: Text(fruitPerson['person'][index]),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
