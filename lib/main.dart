import 'package:demo_project/Home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDemoApp());
}

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // ignore: avoid_unnecessary_containers
      home: HomePage(),
    );
  }
}
