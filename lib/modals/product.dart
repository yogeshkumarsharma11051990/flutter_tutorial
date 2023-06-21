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

class ProductModel {
  static final productItem = [
    Products(
        id: "1",
        desc: "shirt",
        price: "100",
        image:
            "https://www.pakainfo.com/wp-content/uploads/2021/09/sample-image-url-for-testing-300x169.jpg")
  ];
}
