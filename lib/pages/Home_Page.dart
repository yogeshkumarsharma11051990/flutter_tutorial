// ignore_for_file: file_names

import 'package:demo_project/modals/product.dart';
import 'package:demo_project/weidgets/product_weidgt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../weidgets/MyDrawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var jsonData =
        await rootBundle.loadString("assets/files/product_json.json");
    var decodedData = jsonDecode(jsonData);
    //print(decodedData["products"]);

    ProductModel.productItem = List.from(decodedData["products"])
        .map<Products>((product) => Products.fromMap(product))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //List dummyList = List.generate(10, (index) => ProductModel.productItem[0]);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catelog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // ignore: unnecessary_null_comparison
        child: (!(ProductModel.productItem == null) &&
                ProductModel.productItem.isNotEmpty)
            ? ListView.builder(
                itemCount: ProductModel.productItem.length,
                itemBuilder: (context, index) =>
                    ProductWeidght(products: ProductModel.productItem[index]),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
