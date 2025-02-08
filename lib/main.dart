import 'package:crud_app1/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:crud_app1/theme/dark_mode.dart';
import 'package:crud_app1/theme/light_mode.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowMaterialGrid: false,
      home: RegisterPage(onTap: () {  },),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
