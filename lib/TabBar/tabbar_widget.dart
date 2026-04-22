import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 8, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.green,
          elevation: 8.0,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.chat_sharp, color: Colors.white,), text: 'Chats',),
              Tab(icon: Icon(Icons.loop_rounded, color: Colors.white,), text: 'Status',),
              Tab(icon: Icon(Icons.person, color: Colors.white,), text: 'Notifications',),
              Tab(icon: Icon(Icons.call, color: Colors.white,), text: 'Calls',),
              Tab(icon: Icon(Icons.chat_sharp, color: Colors.white,), text: 'Chats',),
              Tab(icon: Icon(Icons.loop_rounded, color: Colors.white,), text: 'Status',),
              Tab(icon: Icon(Icons.person, color: Colors.white,), text: 'Notifications',),
              Tab(icon: Icon(Icons.call, color: Colors.white,), text: 'Calls',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(child: Center(child: Text('Chats', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Status', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Notifications', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Calls', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Chats', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Status', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Notifications', style: TextStyle(fontSize: 30),),),),
            Container(child: Center(child: Text('Calls', style: TextStyle(fontSize: 30),),),),
          ]
          ),
      )
      );
  }
}
