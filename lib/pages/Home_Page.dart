// ignore_for_file: file_names

import 'package:demo_project/modals/product.dart';
import 'package:demo_project/weidgets/product_weidgt.dart';
import 'package:flutter/material.dart';

import '../weidgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List dummyList = List.generate(10, (index) => ProductModel.productItem[0]);

    bringVegitables(thaila: true, rupee: 120);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catelog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ProductWeidght(products: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  bringVegitables({required bool thaila, int rupee = 100}) {}
}
