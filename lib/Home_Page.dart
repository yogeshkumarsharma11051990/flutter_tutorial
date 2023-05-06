import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Yogesh";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("WelCome In $days days of Flutter Tutorial with $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
