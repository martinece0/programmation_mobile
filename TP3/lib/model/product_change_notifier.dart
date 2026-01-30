import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';

class ProductChangeNotifier extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  Future<void> loadProduct() async {
    await Future.delayed(const Duration(seconds: 2));
    _product = generateProduct();
    notifyListeners();
  }
}