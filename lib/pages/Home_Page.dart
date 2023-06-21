// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../weidgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Yogesh";

  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bringVegitables(thaila: true, rupee: 120);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catelog App",
        ),
      ),
      body: Center(
        child: Text("WelCome In $days days of Flutter Tutorial with $name"),
      ),
      drawer: MyDrawer(),
    );
  }

  bringVegitables({required bool thaila, int rupee = 100}) {}
}
