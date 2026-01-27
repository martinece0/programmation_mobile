import 'package:flutter/material.dart';
import 'package:formation_flutter/model/product.dart';
import 'package:formation_flutter/res/app_images.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/widgets/separator_line.dart';

/// Widget Nutri-Score
class ProductNutriscoreWidget extends StatelessWidget {
  final ProductNutriScore? nutriScore;

  const ProductNutriscoreWidget({
    super.key,
    required this.nutriScore,
  });

  String _getImagePath() {
    return switch (nutriScore) {
      ProductNutriScore.A => AppImages.nutriscoreA,
      ProductNutriScore.B => AppImages.nutriscoreB,
      ProductNutriScore.C => AppImages.nutriscoreC,
      ProductNutriScore.D => AppImages.nutriscoreD,
      ProductNutriScore.E => AppImages.nutriscoreE,
      _ => AppImages.nutriscoreE,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 44,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nutri-Score',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF001D3B),
              ),
            ),
            const SizedBox(height: 12),
            Image.asset(
              _getImagePath(),
              height: 60,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget Groupe Nova
class ProductNovaScoreWidget extends StatelessWidget {
  final ProductNovaScore? novaScore;

  const ProductNovaScoreWidget({
    super.key,
    required this.novaScore,
  });

  String _getGroupDescription() {
    return switch (novaScore) {
      ProductNovaScore.group1 => 'Groupe 1\nAliments non transformés ou transformés minimalement',
      ProductNovaScore.group2 => 'Groupe 2\nIngrédients culinaires transformés',
      ProductNovaScore.group3 => 'Groupe 3\nAliments transformés',
      ProductNovaScore.group4 => 'Groupe 4\nProduits alimentaires et boissons ultra-transformés',
      _ => 'Groupe inconnu',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 55,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Groupe NOVA',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF001D3B),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _getGroupDescription(),
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFFAAAAAA),
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget Green Score (Ecoscore)
class ProductGreenScoreWidget extends StatelessWidget {
  final ProductGreenScore? greenScore;

  const ProductGreenScoreWidget({
    super.key,
    required this.greenScore,
  });

  String _getScoreDescription() {
    return switch (greenScore) {
      ProductGreenScore.APlus => 'A+\nTrès faible impact\nenvironnemental',
      ProductGreenScore.A => 'A\nTrès faible impact\nenvironnemental',
      ProductGreenScore.B => 'B\nFaible impact\nenvironnemental',
      ProductGreenScore.C => 'C\nImpact modéré sur\nl\'environnement',
      ProductGreenScore.D => 'D\nImpact environnemental\nélevé',
      ProductGreenScore.E => 'E\nImpact environnemental\ntrès élevé',
      ProductGreenScore.F => 'F\nImpact environnemental\ntrès élevé',
      _ => 'Inconnu',
    };
  }

  IconData _getIconData() {
    return switch (greenScore) {
      ProductGreenScore.APlus => AppIcons.ecoscore_a,
      ProductGreenScore.A => AppIcons.ecoscore_a,
      ProductGreenScore.B => AppIcons.ecoscore_b,
      ProductGreenScore.C => AppIcons.ecoscore_c,
      ProductGreenScore.D => AppIcons.ecoscore_d,
      ProductGreenScore.E => AppIcons.ecoscore_e,
      ProductGreenScore.F => AppIcons.ecoscore_f,
      _ => AppIcons.ecoscore_f,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'EcoScore',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF001D3B),
            ),
          ),
          const SizedBox(height: 8),
          Icon(
            _getIconData(),
            size: 40,
            color: const Color(0xFFFF6600),
          ),
          const SizedBox(height: 8),
          Text(
            _getScoreDescription(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFFAAAAAA),
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

/// Bandeau complet regroupant tous les scores
class ProductScoreBanner extends StatelessWidget {
  final ProductNutriScore? nutriScore;
  final ProductNovaScore? novaScore;
  final ProductGreenScore? greenScore;

  const ProductScoreBanner({
    super.key,
    required this.nutriScore,
    required this.novaScore,
    required this.greenScore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          Row(
            children: [
              ProductNutriscoreWidget(nutriScore: nutriScore),
              SeparatorLine(direction: Axis.vertical),
              ProductNovaScoreWidget(novaScore: novaScore),
            ],
          ),
          SeparatorLine(direction: Axis.horizontal),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: ProductGreenScoreWidget(greenScore: greenScore),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
