import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/model/product_response.dart';

class ProductChangeNotifier extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  Future<void> loadProduct() async {
    try {
      final response = await Dio().get(
          'https://api.formation-flutter.fr/v2/getProduct?barcode=5000159484695',
          options: Options(responseType: ResponseType.plain));

      if (response.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(response.data);
        final productResponse = ProductResponse.fromJson(map);
        _product = productResponse.product;
        notifyListeners();
      }
    } catch (e) {
      print('Erreur lors du chargement : $e');
    }
  }
}