import 'package:flutter/material.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST2C8zglWbKgJ_aqF8i8qEjc_QQS3xPNAhWw&s'),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hritik Roshan', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                          Text('hritik.roshan@example.com', style: TextStyle(color: Colors.white, fontSize: 14.0))
                        ],
                      )
                    ],
                  ),
              )),
              ListTile(
                title: Text('My Files', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.folder, color: Colors.white),
              ),
               ListTile(
                title: Text('My Order', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.restaurant, color: Colors.white),
              ),
               ListTile(
                title: Text('Shared by me', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.group, color: Colors.white),
              ),
               ListTile(
                title: Text('Uploads', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.upload, color: Colors.white),
              ),
               ListTile(
                title: Text('Vouchers', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.card_giftcard, color: Colors.white),
              ),
               ListTile(
                title: Text('Bookings', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.calendar_today, color: Colors.white),
              ),
               Divider(color: Colors.white,),
               ListTile(
                title: Text('About', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.info, color: Colors.white),
                ),
                 ListTile(
                title: Text('Logout', style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.exit_to_app, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 8.0,
      ),
      body: Container(
        child: Center(
          child: Text('Hey There'),
        ),
      ),
    );
  }
}