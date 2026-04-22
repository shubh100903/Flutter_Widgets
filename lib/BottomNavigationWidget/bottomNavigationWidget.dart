import 'package:flutter/material.dart';
import 'package:my_first_app/AlertDialogBox/alertDialogBox.dart';
import 'package:my_first_app/AnimatedTextWidget/animatedTextWidget.dart';
import 'package:my_first_app/Dismissible/dismissible_widget.dart';
import 'package:my_first_app/Drawer/drawer.dart';

class Bottomnavigationwidget extends StatefulWidget {
  const Bottomnavigationwidget({super.key});

  @override
  State<Bottomnavigationwidget> createState() => _BottomnavigationwidgetState();
}

class _BottomnavigationwidgetState extends State<Bottomnavigationwidget> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BottomNavigationWidget'),
      //   backgroundColor: Colors.green,
      //   elevation: 8.0,
      // ),
      body: PageView(
        controller: pageController,
        children: [
            Alertdialogbox(),
            DismissibleWidget(),
            Animatedtextwidget(),
            DrawerWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
        onTap: onItemTapped,
      ),
    );
  }
}
