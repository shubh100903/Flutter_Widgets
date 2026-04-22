import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/content.dart';
import 'package:my_first_app/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadow,
          ),
          child: Content(),
        ),
      ),
    );
  }
}