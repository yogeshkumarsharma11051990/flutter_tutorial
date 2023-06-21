import 'package:flutter/material.dart';

import '../modals/product.dart';

class ProductWeidght extends StatelessWidget {
  final Products products;

  const ProductWeidght({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(),
      child: ListTile(
        onTap: () {
          print("Pressed ${products.desc}");
        },
        leading: Image.network(products.image),
        title: Text(
          products.desc,
        ),
        subtitle: Text(products.desc),
        trailing: Text("\$${products.price}",
            style:
                TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
