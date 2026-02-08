import 'package:json_annotation/json_annotation.dart';
import 'product.dart';

part 'product_api.g.dart';

@JsonSerializable()
class ProductResponse {
  final Product? product;

  ProductResponse({this.product});

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}