import 'package:flutter/material.dart';

void main() => runApp(RowsAndCols());

class RowsAndCols extends StatelessWidget {
  const RowsAndCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
           children: [
            Container(height: 60, width: 60, color: Colors.red,),
            Container(height: 60, width: 60, color: Colors.blue,),
            Container(height: 60, width: 60, color: Colors.green,),
            Container(height: 60, width: 60, color: Colors.orange,),
            Container(height: 60, width: 60, color: Colors.purple,)
           ],
        ),
      ),
    );
  }
}
