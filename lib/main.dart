// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:demo_project/pages/Home_Page.dart';
import 'package:demo_project/pages/Login_Page.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}
