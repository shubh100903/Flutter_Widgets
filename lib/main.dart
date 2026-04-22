import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:my_first_app/AlertDialogBox/alertDialogBox.dart";
import "package:my_first_app/AnimatedTextWidget/animatedTextWidget.dart";
import "package:my_first_app/BottomNavigationWidget/bottomNavigationWidget.dart";
import "package:my_first_app/BottomSheetWidget/bottomSheetWidget.dart";
import "package:my_first_app/Container_Sized/container_sized.dart";
import "package:my_first_app/Dismissible/dismissible_widget.dart";
import "package:my_first_app/Drawer/drawer.dart";
import "package:my_first_app/DropDownList/dropDownList.dart";
import "package:my_first_app/Forms/formswidget.dart";
import "package:my_first_app/Geolocator/geolocator_widget.dart";
import "package:my_first_app/ImagePicker/imagePickerWidget.dart";
import "package:my_first_app/ImagePicker/imagepickerwidget02.dart";
import "package:my_first_app/ImagePicker/imagepickerwidget03.dart";
import "package:my_first_app/ImageWidget/imageWidget.dart";
import "package:my_first_app/Listview_Gridview/listview_&_gridview.dart";
import "package:my_first_app/Pages/home.dart";
import "package:my_first_app/Rows_Cols/rows_n_cols.dart";
import "package:my_first_app/Snackbar/snackbar_widget.dart";
import "package:my_first_app/Stack&Positioned/stack&positioned_widget.dart";
import "package:my_first_app/Text_ElevatedButton/text_elevated_button.dart";
import "package:my_first_app/day19UI.dart";
import "package:my_first_app/day20.dart";
import "package:my_first_app/utils/colors.dart";
import 'TabBar/tabbar_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "xxx",
      authDomain: "xxx",
      projectId: "xxx",
      storageBucket: "xxx",
      messagingSenderId: "xxx",
      appId: "xxx",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.bgcolor,
      ),
      debugShowCheckedModeBanner: false,
      home: Day19ui(),
    );
  }
}
