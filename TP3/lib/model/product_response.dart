import 'package:formation_flutter/model/product.dart';

class ProductResponse {
  final Product product;

  ProductResponse.fromJson(Map<String, dynamic> json)
      : product = Product.fromJson(json['response'] as Map<String, dynamic>);
}