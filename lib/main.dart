import 'package:flutter/material.dart';
import 'package:tuts/Widgets/Alertboxi.dart';
import 'package:tuts/Widgets/AnimatedText.dart';
import 'package:tuts/Widgets/Auth.dart';
import 'package:tuts/Widgets/Buttons.dart';
import 'package:tuts/Widgets/Dismissible.dart';
import 'package:tuts/Widgets/Form.dart';
import 'package:tuts/Widgets/Geolocation.dart';
import 'package:tuts/Widgets/Image_Widget.dart';
import 'package:tuts/Widgets/ModalBottom.dart';
import 'package:tuts/Widgets/Tabbar.dart';
import 'package:tuts/Widgets/bottomNavigation.dart';
import 'package:tuts/Widgets/complex_ui.dart';
import 'package:tuts/Widgets/container_size.dart';
import 'package:tuts/Widgets/drawer.dart';
import 'package:tuts/Widgets/grid_list_view.dart';
import 'package:tuts/Widgets/row_col.dart';
import 'package:tuts/Widgets/ui_clone.dart';
import 'Widgets/Snackbar.dart';
import 'Widgets/Alertboxi.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.blueGrey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.black,
        primaryColor: Colors.white,
      ),
      home: Authentication(),
    );
  }
}

