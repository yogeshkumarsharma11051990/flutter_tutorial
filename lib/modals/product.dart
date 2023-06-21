class Products {
  final String id;
  final String desc;
  final String price;
  final String image;

  Products(
      {required this.id,
      required this.desc,
      required this.price,
      required this.image});
}

final productArray = [
  Products(id: "1", desc: "shirt", price: "100", image: "")
];
