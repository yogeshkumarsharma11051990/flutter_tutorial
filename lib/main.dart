import 'package:flutter/material.dart';

void main() {
  runApp(const MyDemoApp());
}

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: avoid_unnecessary_containers
      home: Material(
        child: Center(
          child: Container(
            child: const Text("WelCome In Flutter Tutorial"),
          ),
        ),
      ),
    );
  }
}
