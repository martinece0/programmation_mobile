  // ignore_for_file: constant_identifier_names
  class Product {
    final String barcode;
    final String? name;
    final String? altName;
    final String? picture;
    final String? quantity;
    final List<String>? brands;
    final List<String>? manufacturingCountries;
    final ProductNutriScore? nutriScore;
    final ProductNutriScoreLevels? nutriScoreLevels;
    final ProductNovaScore? novaScore;
    final ProductGreenScore? greenScore;
    final List<String>? ingredients;

    // Eg: "Sucre, <span class=\"allergen\">gluten de blé</span>"
    final String? ingredientsWithAllergens;
    final List<String>? traces;
    final List<String>? allergens;
    final Map<String, String>? additives;
    final NutrientLevels? nutrientLevels;
    final NutritionFacts? nutritionFacts;
    final bool? ingredientsFromPalmOil;
    final ProductAnalysis? containsPalmOil;
    final ProductAnalysis? isVegan;
    final ProductAnalysis? isVegetarian;

    Product({
      required this.barcode,
      this.name,
      this.altName,
      this.picture,
      this.quantity,
      this.brands,
      this.manufacturingCountries,
      this.nutriScore,
      this.nutriScoreLevels,
      this.novaScore,
      this.greenScore,
      this.ingredients,
      this.ingredientsWithAllergens,
      this.traces,
      this.allergens,
      this.additives,
      this.nutrientLevels,
      this.nutritionFacts,
      this.ingredientsFromPalmOil,
      this.containsPalmOil,
      this.isVegan,
      this.isVegetarian,
    });

    Product.fromJson(Map<String, dynamic> json)
        : barcode = json['barcode'] as String,
          name = json['name']?.toString(),
          altName = json['altName']?.toString(),
          picture = (json['picture'] ?? json['image_front_url'] ?? json['image_url'] ?? json['image_small_url'])?.toString(),
          quantity = json['quantity']?.toString(),
          brands = (json['brands'] is List) ? (json['brands'] as List).map((e) => e.toString()).toList() : null,
          manufacturingCountries = (json['manufacturingCountries'] is List) ? (json['manufacturingCountries'] as List).map((e) => e.toString()).toList() : null,
          nutriScore = ProductNutriScore.fromJson(json['nutriScore']?.toString()),
          nutriScoreLevels = json['nutriScoreLevels'] != null
              ? ProductNutriScoreLevels.fromJson(json['nutriScoreLevels'] as Map<String, dynamic>)
              : null,
          novaScore = ProductNovaScore.fromJson(json['novaScore']?.toString()),
          greenScore = ProductGreenScore.fromJson(json['greenScore']?.toString()),
          ingredients = (json['ingredients'] is List) ? (json['ingredients'] as List).map((e) => e.toString()).toList() : null,
          ingredientsWithAllergens = json['ingredientsWithAllergens']?.toString(),
          traces = (json['traces'] is List) ? (json['traces'] as List).map((e) => e.toString()).toList() : null,
          allergens = (json['allergens'] is List) ? (json['allergens'] as List).map((e) => e.toString()).toList() : null,
          additives = (json['additives'] as Map<String, dynamic>?)?.cast<String, String>(),
          nutrientLevels = json['nutrientLevels'] != null
              ? NutrientLevels.fromJson(json['nutrientLevels'] as Map<String, dynamic>)
              : null,
          nutritionFacts = json['nutritionFacts'] != null
              ? NutritionFacts.fromJson(json['nutritionFacts'] as Map<String, dynamic>)
              : null,
          ingredientsFromPalmOil = json['ingredientsFromPalmOil'] as bool?,
          containsPalmOil = ProductAnalysis.fromString(json['containsPalmOil']?.toString()),
          isVegan = ProductAnalysis.fromString(json['isVegan']?.toString()),
          isVegetarian = ProductAnalysis.fromString(json['isVegetarian']?.toString());
  }

  class NutritionFacts {
    final String? servingSize;
    final Nutriment? calories;
    final Nutriment? fat;
    final Nutriment? saturatedFat;
    final Nutriment? carbohydrate;
    final Nutriment? sugar;
    final Nutriment? fiber;
    final Nutriment? proteins;
    final Nutriment? sodium;
    final Nutriment? salt;
    final Nutriment? energy;

    NutritionFacts({
      this.servingSize,
      this.calories,
      this.fat,
      this.saturatedFat,
      this.carbohydrate,
      this.sugar,
      this.fiber,
      this.proteins,
      this.sodium,
      this.salt,
      this.energy,
    });

    NutritionFacts.fromJson(Map<String, dynamic> json)
        : servingSize = json['servingSize']?.toString(),
          calories = json['calories'] != null ? Nutriment.fromJson(json['calories']) : null,
          fat = json['fat'] != null ? Nutriment.fromJson(json['fat']) : null,
          saturatedFat = json['saturatedFat'] != null ? Nutriment.fromJson(json['saturatedFat']) : null,
          carbohydrate = json['carbohydrate'] != null ? Nutriment.fromJson(json['carbohydrate']) : null,
          sugar = json['sugar'] != null ? Nutriment.fromJson(json['sugar']) : null,
          fiber = json['fiber'] != null ? Nutriment.fromJson(json['fiber']) : null,
          proteins = json['proteins'] != null ? Nutriment.fromJson(json['proteins']) : null,
          sodium = json['sodium'] != null ? Nutriment.fromJson(json['sodium']) : null,
          salt = json['salt'] != null ? Nutriment.fromJson(json['salt']) : null,
          energy = json['energy'] != null ? Nutriment.fromJson(json['energy']) : null;
  }

  class Nutriment {
    final String? unit;
    final dynamic perServing;
    final dynamic per100g;

    Nutriment({this.unit, this.perServing, this.per100g});

    Nutriment.fromJson(Map<String, dynamic> json)
        : unit = json['unit']?.toString(),
          perServing = json['perServing'],
          per100g = json['per100g'];
  }

  class NutrientLevels {
    final String? salt;
    final String? saturatedFat;
    final String? sugars;
    final String? fat;

    NutrientLevels({this.salt, this.saturatedFat, this.sugars, this.fat});

    NutrientLevels.fromJson(Map<String, dynamic> json)
        : salt = json['salt']?.toString(),
          saturatedFat = json['saturatedFat']?.toString(),
          sugars = json['sugars']?.toString(),
          fat = json['fat']?.toString();
  }

  class ProductNutriScoreLevels {
    final ProductNutriScoreLevel? energy;
    final ProductNutriScoreLevel? fiber;
    final ProductNutriScoreLevel? fruitsVegetablesLegumes;
    final ProductNutriScoreLevel? proteins;
    final ProductNutriScoreLevel? salt;
    final ProductNutriScoreLevel? saturatedFat;
    final ProductNutriScoreLevel? sugars;

    ProductNutriScoreLevels({
      this.energy,
      this.fiber,
      this.fruitsVegetablesLegumes,
      this.proteins,
      this.salt,
      this.saturatedFat,
      this.sugars,
    });

    ProductNutriScoreLevels.fromJson(Map<String, dynamic> json)
        : energy = json['energy'] != null ? ProductNutriScoreLevel.fromJson(json['energy']) : null,
          fiber = json['fiber'] != null ? ProductNutriScoreLevel.fromJson(json['fiber']) : null,
          fruitsVegetablesLegumes = json['fruitsVegetablesLegumes'] != null ? ProductNutriScoreLevel.fromJson(json['fruitsVegetablesLegumes']) : null,
          proteins = json['proteins'] != null ? ProductNutriScoreLevel.fromJson(json['proteins']) : null,
          salt = json['salt'] != null ? ProductNutriScoreLevel.fromJson(json['salt']) : null,
          saturatedFat = json['saturatedFat'] != null ? ProductNutriScoreLevel.fromJson(json['saturatedFat']) : null,
          sugars = json['sugars'] != null ? ProductNutriScoreLevel.fromJson(json['sugars']) : null;
  }

  class ProductNutriScoreLevel {
    final double? points;
    final double? maxPoints;
    final String? unit;
    final double? value;
    final ProductNutriScoreLevelType? type;

    ProductNutriScoreLevel({
      this.points,
      this.maxPoints,
      this.unit,
      this.value,
      this.type,
    });

    ProductNutriScoreLevel.fromJson(Map<String, dynamic> json)
        : points = (json['points'] as num?)?.toDouble(),
          maxPoints = (json['maxPoints'] as num?)?.toDouble(),
          unit = json['unit']?.toString(),
          value = (json['value'] as num?)?.toDouble(),
          type = ProductNutriScoreLevelType.fromJson(json['type']?.toString());
  }

  enum ProductNutriScoreLevelType {
    positive,
    negative,
    unknown;

    static ProductNutriScoreLevelType fromJson(String? type) => switch (type) {
      'positive' => ProductNutriScoreLevelType.positive,
      'negative' => ProductNutriScoreLevelType.negative,
      _ => ProductNutriScoreLevelType.unknown,
    };
  }

  enum ProductNutriScore {
    A,
    B,
    C,
    D,
    E,
    unknown;

    static ProductNutriScore fromJson(String? score) => switch (score?.toUpperCase()) {
      'A' => ProductNutriScore.A,
      'B' => ProductNutriScore.B,
      'C' => ProductNutriScore.C,
      'D' => ProductNutriScore.D,
      'E' => ProductNutriScore.E,
      _ => ProductNutriScore.unknown,
    };
  }

  enum ProductNovaScore {
    group1,
    group2,
    group3,
    group4,
    unknown;

    static ProductNovaScore fromJson(String? score) => switch (score) {
      '1' || 'group1' => ProductNovaScore.group1,
      '2' || 'group2' => ProductNovaScore.group2,
      '3' || 'group3' => ProductNovaScore.group3,
      '4' || 'group4' => ProductNovaScore.group4,
      _ => ProductNovaScore.unknown,
    };
  }

  enum ProductGreenScore {
    A,
    APlus,
    B,
    C,
    D,
    E,
    F,
    unknown;

    static ProductGreenScore fromJson(String? score) => switch (score?.toUpperCase()) {
      'A' => ProductGreenScore.A,
      'A+' || 'APLUS' => ProductGreenScore.APlus,
      'B' => ProductGreenScore.B,
      'C' => ProductGreenScore.C,
      'D' => ProductGreenScore.D,
      'E' => ProductGreenScore.E,
      'F' => ProductGreenScore.F,
      _ => ProductGreenScore.unknown,
    };
  }

  enum ProductAnalysis {
    yes,
    no,
    maybe;

    static ProductAnalysis fromString(String? analysis) {
      return switch (analysis) {
        'yes' => ProductAnalysis.yes,
        'no' => ProductAnalysis.no,
        'maybe' => ProductAnalysis.maybe,
        _ => ProductAnalysis.maybe,
      };
    }
  }

  Product generateProduct() => Product(
    barcode: '1234567890',
    name: 'Nutella',
    altName: 'Product Alt Name',
    picture:
        'https://images.openfoodfacts.org/images/products/301/762/042/5035/front_fr.533.400.jpg',
    quantity: '200g',
    brands: ['Ferrero', 'Ferrero'],
    manufacturingCountries: ['France', 'Italie'],
    nutriScore: ProductNutriScore.E,
    novaScore: ProductNovaScore.group4,
    greenScore: ProductGreenScore.D,
    ingredients: [
      'Sucre',
      'sirop de glucose',
      '_lait_ écrémé',
      'crème légère (_lait_)',
      'eau',
      'beurre de cacao',
      'matière grasse de noix de coco',
      '_lait_ écrémé concentré sucré',
      'pâte de cacao',
      'farine de _blé_',
      'matière grasse de palme',
      '_lait_ écrémé en poudre',
      '_lactose_',
      'matière grasse du _lait_',
      'huile de palmiste',
      'petit-_lait_ en poudre',
      'cacao maigre',
      'beurre (_lait_)',
      'émulsifiants (lécithine de _soja_, E471, tristéarate de sorbitane)',
      '_lait_ entier en poudre',
      'stabilisants (E407, E410, E412)',
      'arômes naturels (_lait_)',
      'sel',
      'colorant naturel (caramel ordinaire)',
      'cacao en poudre',
      'poudre à lever (E503)',
      'extrait naturel de vanille',
    ],
    ingredientsWithAllergens:
        'Sucre, sirop de glucose, <span class=\"allergen\">lait</span> écrémé, crème légère (<span class=\"allergen\">lait</span>), eau, beurre de cacao, matière grasse de noix de coco, <span class=\"allergen\">lait</span> écrémé concentré sucré, pâte de cacao, farine de <span class=\"allergen\">blé</span>, matière grasse de palme, <span class=\"allergen\">lait</span> écrémé en poudre, <span class=\"allergen\">lactose</span>, matière grasse du <span class=\"allergen\">lait</span>, huile de palmiste, petit-<span class=\"allergen\">lait</span> en poudre, cacao maigre, <span class=\"allergen\">beurre</span> (<span class=\"allergen\">lait</span>), émulsifiants (lécithine de <span class=\"allergen\">soja</span>, E471, tristéarate de sorbitane), <span class=\"allergen\">lait</span> entier en poudre, stabilisants (E407, E410, E412), arômes naturels (<span class=\"allergen\">lait</span>), sel, colorant naturel (caramel ordinaire), cacao en poudre, poudre à lever (E503), extrait naturel de vanille. (Peut contenir<span class=\"allergen\">: cacahuète</span>, <span class=\"allergen\">noisette</span>, <span class=\"allergen\">amande</span>).',
    traces: ['cacahuète', 'noisette', 'amande'],
    allergens: ['lait', 'soja', 'beurre'],
    additives: {'e322i': 'Description', 'e471': 'Description'},
    nutriScoreLevels: ProductNutriScoreLevels(
      energy: ProductNutriScoreLevel(
        points: 3,
        maxPoints: 10,
        unit: 'kJ',
        value: 1180,
        type: ProductNutriScoreLevelType.negative,
      ),
      saturatedFat: ProductNutriScoreLevel(
        points: 9,
        maxPoints: 10,
        unit: 'g',
        value: 9.05,
        type: ProductNutriScoreLevelType.negative,
      ),
      sugars: ProductNutriScoreLevel(
        points: 7,
        maxPoints: 15,
        unit: 'g',
        value: 25.5,
        type: ProductNutriScoreLevelType.negative,
      ),
      proteins: ProductNutriScoreLevel(
        points: 1,
        maxPoints: 7,
        unit: 'g',
        value: 3.5,
        type: ProductNutriScoreLevelType.positive,
      ),
      fiber: ProductNutriScoreLevel(
        points: 0,
        maxPoints: 5,
        unit: 'g',
        value: 0,
        type: ProductNutriScoreLevelType.unknown,
      ),
      salt: ProductNutriScoreLevel(
        points: 1,
        maxPoints: 20,
        unit: 'g',
        value: 0,
        type: ProductNutriScoreLevelType.positive,
      ),
      fruitsVegetablesLegumes: ProductNutriScoreLevel(
        points: 0,
        maxPoints: 5,
        unit: '%',
        value: 0,
        type: ProductNutriScoreLevelType.positive,
      ),
    ),
    nutrientLevels: NutrientLevels(
      salt: 'Low',
      saturatedFat: 'Low',
      sugars: 'Low',
      fat: 'Low',
    ),
    nutritionFacts: NutritionFacts(
      servingSize: '100g',
      calories: Nutriment(unit: 'kcal', perServing: 100, per100g: 100),
      fat: Nutriment(unit: 'g', perServing: 10, per100g: 10),
      saturatedFat: Nutriment(unit: 'g', perServing: 5, per100g: 5),
      carbohydrate: Nutriment(unit: 'g', perServing: 20, per100g: 20),
      sugar: Nutriment(unit: 'g', perServing: 10, per100g: 10),
      fiber: Nutriment(unit: 'g', perServing: 5, per100g: 5),
      proteins: Nutriment(unit: 'g', perServing: 10, per100g: 10),
      sodium: Nutriment(unit: 'mg', perServing: 100, per100g: 100),
      salt: Nutriment(unit: 'g', perServing: 0.1, per100g: 0.1),
    ),
  );
