import 'package:flutter/widgets.dart';
import 'product.dart';

class ProductProvider extends InheritedWidget {
  final Product product;

  const ProductProvider({required this.product, required super.child, super.key});

  static ProductProvider of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ProductProvider>();
    assert(provider != null, 'No ProductProvider found in context');
    return provider!;
  }

  @override
  bool updateShouldNotify(covariant ProductProvider oldWidget) {
    return oldWidget.product != product;
  }
}
