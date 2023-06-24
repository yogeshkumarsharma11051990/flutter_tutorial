// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Products {
  final String id;
  final String desc;
  final String price;
  final String image;
  Products({
    required this.id,
    required this.desc,
    required this.price,
    required this.image,
  });

  /* Products(
      {required this.id,
      required this.desc,
      required this.price,
      required this.image});

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] as String,
      desc: map['desc'] as String,
      price: map['price'] as String,
      image: map['image'] as String,
    );
  }

  toMap() => {"id": id, "desc": desc, "price": price, "image": image}; */

  Products copyWith({
    String? id,
    String? desc,
    String? price,
    String? image,
  }) {
    return Products(
      id: id ?? this.id,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'desc': desc,
      'price': price,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Products(id: $id, desc: $desc, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant Products other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.desc == desc &&
        other.price == price &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ desc.hashCode ^ price.hashCode ^ image.hashCode;
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] as String,
      desc: map['desc'] as String,
      price: map['price'] as String,
      image: map['image'] as String,
    );
  }
}

class ProductModel {
  static List<Products> productItem = [];
}
