import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/widgets/score_banner.dart';
import 'package:formation_flutter/widgets/product_info_row.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = generateProduct();

    return Scaffold(
      // On utilise un ScrollView pour que l'utilisateur puisse scroller
      // si le texte est trop long sur un petit téléphone.
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const _ProductPicture(),
                // On utilise un Transform pour faire remonter la carte sur l'image
                Transform.translate(
                  offset: const Offset(0, -20), // Remonte de 20 pixels
                  child: _ProductDetails(productName: product.name ?? 'Produit'),
                ),
              ],
            ),
            Positioned(
              top: 400,
              left: 0,
              right: 0,
              child: ProductScoreBanner(
                nutriScore: product.nutriScore,
                novaScore: product.novaScore,
                greenScore: product.greenScore,
              ),
            ),
            Positioned(
              top: 680,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const _ProductData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop',
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
  final String productName;
  const _ProductDetails({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
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
              productName,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF080040),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Cassegrain',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: const _ProductData(),
            ),
            // On ajoute un grand espace vide en bas pour simuler la suite de la page
            const SizedBox(height: 500), 
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
    return Column(
      children: [
        ProductInfoRow(
          label: 'Quantité',
          value: '200g (égoutté 130g)',
          showSeparator: true,
        ),
        ProductInfoRow(
          label: 'Vendu',
          value: 'France',
          showSeparator: false,
        ),
      ],
    );
  }
}