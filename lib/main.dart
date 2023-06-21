// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:demo_project/pages/Home_Page.dart';
import 'package:demo_project/pages/Login_Page.dart';
import 'package:demo_project/utils/MyRouts.dart';
import 'package:demo_project/weidgets/MyThem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyDemoApp());
}

class MyDemoApp extends StatelessWidget {
  MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: avoid_unnecessary_containers
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRouts.homeRout,
      routes: {
        //"/": (context) => LoginPage(),
        MyRouts.loginRout: (context) => LoginPage(),
        MyRouts.homeRout: (context) => HomePage()
      },
    );
  }
}
