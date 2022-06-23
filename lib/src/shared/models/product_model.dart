import 'dart:convert';


class ProductModel {
  String productID;
  String name;
  int amount;
  int? sequ;
  double price;
  double totalPrice;

  ProductModel({
    required this.productID,
    required this.name,
    required this.amount,
    this.sequ,
    required this.price,
    required this.totalPrice,
  });

  ProductModel copyWith({
    String? productID,
    String? name,
    int? amount,
    int? sequ,
    double? price,
    double? totalPrice,
  }) {
    return ProductModel(
      productID: productID ?? this.productID,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      sequ: sequ ?? this.sequ,
      price: price ?? this.price,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productID': productID,
      // 'name': name,
      'amount': amount,
      'sequ': sequ,
      'price': price,
      'totalPrice': totalPrice,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productID: map['productID'] as String,
      name: map['name'] as String,
      amount: map['amount'] as int,
      sequ: map['sequ'] != null ? map['sequ'] as int : null,
      price: map['price'] as double,
      totalPrice: map['totalPrice'] as double,
    );
  }

   factory ProductModel.fromMap1(Map<String, dynamic> map) {
    return ProductModel(
      productID: map['productID'] as String,
      name: map['name'] as String,
      amount: 0,
      sequ: map['sequ'] != null ? map['sequ'] as int : null,
      price: map['price'] as double,
      totalPrice: map['totalPrice'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(productID: $productID, name: $name, amount: $amount, sequ: $sequ, price: $price, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.productID == productID &&
        other.name == name &&
        other.amount == amount &&
        other.sequ == sequ &&
        other.price == price &&
        other.totalPrice == totalPrice;
  }

  @override
  int get hashCode {
    return productID.hashCode ^
        name.hashCode ^
        amount.hashCode ^
        sequ.hashCode ^
        price.hashCode ^
        totalPrice.hashCode;
  }
}
