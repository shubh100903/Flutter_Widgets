import 'package:flutter/material.dart';

class Dropdownlist extends StatefulWidget {
  const Dropdownlist({super.key});

  @override
  State<Dropdownlist> createState() => _DropdownlistState();
}

class _DropdownlistState extends State<Dropdownlist> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop down list'),
        backgroundColor: Colors.green,
        elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              color: const Color.fromARGB(255, 234, 229, 229),
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey[200],
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String? newvalue){  // Parameter used to reflect the selected value in the dropdown list
                  setState(() {
                    selectedvalue = newvalue!;
                  });
                },
                value: selectedvalue,
                items: <String>['Orange','Guava','Banana','Apple','Grapes'].map<DropdownMenuItem<String>>((String value){ // map is used to convert the list of string into a list of dropdown menu item
                    return DropdownMenuItem<String>(child: Text(value), value: value,); // child is used to display the values in the dropdown list
                }).toList(),
            )),
          ]),
      ),
    );
  }
}
