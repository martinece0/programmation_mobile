import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_provider.dart';
import 'package:formation_flutter/l10n/app_localizations.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/widgets/score_banner.dart';
import 'package:formation_flutter/widgets/product_info_row.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: Scaffold(
        body: Consumer<ProductProvider>(
          builder: (context, provider, child) {
            return provider.product == null
                ? const _ProductLoading()
                : const _ProductContent();
          },
        ),
      ),
    );
  }
}

class _ProductLoading extends StatelessWidget {
  const _ProductLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ProductContent extends StatelessWidget {
  const _ProductContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const _ProductPicture(),
          // On utilise un Transform pour faire remonter la carte sur l'image
          Transform.translate(
            offset: const Offset(0, -20), // Remonte de 20 pixels
            child: const _ProductDetails(),
          ),
        ],
      ),
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.watch<ProductProvider>().product!;
    return Stack(
      children: [
        if (product.picture != null)
          Image.network(
            product.picture!,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        // On rajoute les boutons par-dessus l'image ici
        Positioned(
          top: 50,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () {}),
              IconButton(icon: const Icon(Icons.reply, color: Colors.white), onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.watch<ProductProvider>().product!;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name ?? 'Produit',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF080040),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.brands?.join(", ") ?? '',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            ProductScoreBanner(
              nutriScore: product.nutriScore,
              novaScore: product.novaScore,
              greenScore: product.greenScore,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: const _ProductData(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductData extends StatelessWidget {
  const _ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    final product = context.watch<ProductProvider>().product!;
    final localizations = AppLocalizations.of(context)!;
    return Column(
      children: [
        ProductInfoRow(
          label: localizations.product_quantity,
          value: product.quantity ?? '',
          showSeparator: true,
        ),
        ProductInfoRow(
          label: localizations.product_countries,
          value: product.manufacturingCountries?.join(", ") ?? '',
          showSeparator: false,
        ),
      ],
    );
  }
}