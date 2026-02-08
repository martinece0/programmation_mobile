import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formation_flutter/model/rest_client.dart';
import 'package:formation_flutter/model/product.dart';

class ProductProvider extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  ProductProvider() {
    loadProduct('5449000000996');
  }

  Future<void> loadProduct(String barcode) async {
    _product = null;
    notifyListeners();
    try {
      final dio = Dio();
      dio.options.connectTimeout = const Duration(seconds: 10);
      dio.options.receiveTimeout = const Duration(seconds: 10);

      final client = RestClient(dio);
      debugPrint('Appel API en cours...');
      final response = await client.getProduct(barcode);
      debugPrint('Réponse API reçue ! Produit: ${response.product?.name}');

      if (response.product == null) {
        throw Exception('Le produit retourné par l\'API est null');
      }

      _product = response.product;
      notifyListeners();
    } catch (e, stackTrace) {
      debugPrint('ERREUR API : $e');
      debugPrint('Stacktrace : $stackTrace');
      // En cas d'erreur, on charge le produit de secours pour débloquer l'écran
      _product = generateFakeProduct();
      notifyListeners();
    }
  }
}