// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  barcode: json['barcode'] as String,
  name: json['name'] as String?,
  altName: json['altName'] as String?,
  picture: json['picture'] as String?,
  quantity: json['quantity'] as String?,
  brands: (json['brands'] as List<dynamic>?)?.map((e) => e as String).toList(),
  manufacturingCountries: (json['manufacturingCountries'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  nutriScore: $enumDecodeNullable(
    _$ProductNutriScoreEnumMap,
    json['nutriScore'],
  ),
  nutriScoreLevels: json['nutriScoreLevels'] == null
      ? null
      : ProductNutriScoreLevels.fromJson(
          json['nutriScoreLevels'] as Map<String, dynamic>,
        ),
  novaScore: $enumDecodeNullable(_$ProductNovaScoreEnumMap, json['novaScore']),
  greenScore: $enumDecodeNullable(
    _$ProductGreenScoreEnumMap,
    json['greenScore'],
  ),
  ingredients: (json['ingredients'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  ingredientsWithAllergens: json['ingredientsWithAllergens'] as String?,
  traces: (json['traces'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allergens: (json['allergens'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  additives: (json['additives'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  nutrientLevels: json['nutrientLevels'] == null
      ? null
      : NutrientLevels.fromJson(json['nutrientLevels'] as Map<String, dynamic>),
  nutritionFacts: json['nutritionFacts'] == null
      ? null
      : NutritionFacts.fromJson(json['nutritionFacts'] as Map<String, dynamic>),
  ingredientsFromPalmOil: json['ingredientsFromPalmOil'] as bool?,
  containsPalmOil: $enumDecodeNullable(
    _$ProductAnalysisEnumMap,
    json['containsPalmOil'],
  ),
  isVegan: $enumDecodeNullable(_$ProductAnalysisEnumMap, json['isVegan']),
  isVegetarian: $enumDecodeNullable(
    _$ProductAnalysisEnumMap,
    json['isVegetarian'],
  ),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'barcode': instance.barcode,
  'name': instance.name,
  'altName': instance.altName,
  'picture': instance.picture,
  'quantity': instance.quantity,
  'brands': instance.brands,
  'manufacturingCountries': instance.manufacturingCountries,
  'nutriScore': _$ProductNutriScoreEnumMap[instance.nutriScore],
  'nutriScoreLevels': instance.nutriScoreLevels,
  'novaScore': _$ProductNovaScoreEnumMap[instance.novaScore],
  'greenScore': _$ProductGreenScoreEnumMap[instance.greenScore],
  'ingredients': instance.ingredients,
  'ingredientsWithAllergens': instance.ingredientsWithAllergens,
  'traces': instance.traces,
  'allergens': instance.allergens,
  'additives': instance.additives,
  'nutrientLevels': instance.nutrientLevels,
  'nutritionFacts': instance.nutritionFacts,
  'ingredientsFromPalmOil': instance.ingredientsFromPalmOil,
  'containsPalmOil': _$ProductAnalysisEnumMap[instance.containsPalmOil],
  'isVegan': _$ProductAnalysisEnumMap[instance.isVegan],
  'isVegetarian': _$ProductAnalysisEnumMap[instance.isVegetarian],
};

const _$ProductNutriScoreEnumMap = {
  ProductNutriScore.A: 'a',
  ProductNutriScore.B: 'b',
  ProductNutriScore.C: 'c',
  ProductNutriScore.D: 'd',
  ProductNutriScore.E: 'e',
  ProductNutriScore.unknown: 'unknown',
};

const _$ProductNovaScoreEnumMap = {
  ProductNovaScore.group1: 1,
  ProductNovaScore.group2: 2,
  ProductNovaScore.group3: 3,
  ProductNovaScore.group4: 4,
  ProductNovaScore.unknown: 'unknown',
};

const _$ProductGreenScoreEnumMap = {
  ProductGreenScore.A: 'a',
  ProductGreenScore.B: 'b',
  ProductGreenScore.C: 'c',
  ProductGreenScore.D: 'd',
  ProductGreenScore.E: 'e',
  ProductGreenScore.F: 'f',
  ProductGreenScore.APlus: 'APlus',
  ProductGreenScore.unknown: 'unknown',
};

const _$ProductAnalysisEnumMap = {
  ProductAnalysis.yes: 'yes',
  ProductAnalysis.no: 'no',
  ProductAnalysis.maybe: 'maybe',
};

NutritionFacts _$NutritionFactsFromJson(Map<String, dynamic> json) =>
    NutritionFacts(
      servingSize: json['servingSize'] as String,
      calories: json['calories'] == null
          ? null
          : Nutriment.fromJson(json['calories'] as Map<String, dynamic>),
      fat: json['fat'] == null
          ? null
          : Nutriment.fromJson(json['fat'] as Map<String, dynamic>),
      saturatedFat: json['saturatedFat'] == null
          ? null
          : Nutriment.fromJson(json['saturatedFat'] as Map<String, dynamic>),
      carbohydrate: json['carbohydrate'] == null
          ? null
          : Nutriment.fromJson(json['carbohydrate'] as Map<String, dynamic>),
      sugar: json['sugar'] == null
          ? null
          : Nutriment.fromJson(json['sugar'] as Map<String, dynamic>),
      fiber: json['fiber'] == null
          ? null
          : Nutriment.fromJson(json['fiber'] as Map<String, dynamic>),
      proteins: json['proteins'] == null
          ? null
          : Nutriment.fromJson(json['proteins'] as Map<String, dynamic>),
      sodium: json['sodium'] == null
          ? null
          : Nutriment.fromJson(json['sodium'] as Map<String, dynamic>),
      salt: json['salt'] == null
          ? null
          : Nutriment.fromJson(json['salt'] as Map<String, dynamic>),
      energy: json['energy'] == null
          ? null
          : Nutriment.fromJson(json['energy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutritionFactsToJson(NutritionFacts instance) =>
    <String, dynamic>{
      'servingSize': instance.servingSize,
      'calories': instance.calories,
      'fat': instance.fat,
      'saturatedFat': instance.saturatedFat,
      'carbohydrate': instance.carbohydrate,
      'sugar': instance.sugar,
      'fiber': instance.fiber,
      'proteins': instance.proteins,
      'sodium': instance.sodium,
      'salt': instance.salt,
      'energy': instance.energy,
    };

Nutriment _$NutrimentFromJson(Map<String, dynamic> json) => Nutriment(
  unit: json['unit'] as String,
  perServing: json['perServing'],
  per100g: json['per100g'],
);

Map<String, dynamic> _$NutrimentToJson(Nutriment instance) => <String, dynamic>{
  'unit': instance.unit,
  'perServing': instance.perServing,
  'per100g': instance.per100g,
};

NutrientLevels _$NutrientLevelsFromJson(Map<String, dynamic> json) =>
    NutrientLevels(
      salt: json['salt'] as String?,
      saturatedFat: json['saturatedFat'] as String?,
      sugars: json['sugars'] as String?,
      fat: json['fat'] as String?,
    );

Map<String, dynamic> _$NutrientLevelsToJson(NutrientLevels instance) =>
    <String, dynamic>{
      'salt': instance.salt,
      'saturatedFat': instance.saturatedFat,
      'sugars': instance.sugars,
      'fat': instance.fat,
    };

ProductNutriScoreLevels _$ProductNutriScoreLevelsFromJson(
  Map<String, dynamic> json,
) => ProductNutriScoreLevels(
  energy: json['energy'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(json['energy'] as Map<String, dynamic>),
  fiber: json['fiber'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(json['fiber'] as Map<String, dynamic>),
  fruitsVegetablesLegumes: json['fruitsVegetablesLegumes'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(
          json['fruitsVegetablesLegumes'] as Map<String, dynamic>,
        ),
  proteins: json['proteins'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(
          json['proteins'] as Map<String, dynamic>,
        ),
  salt: json['salt'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(json['salt'] as Map<String, dynamic>),
  saturatedFat: json['saturatedFat'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(
          json['saturatedFat'] as Map<String, dynamic>,
        ),
  sugars: json['sugars'] == null
      ? null
      : ProductNutriScoreLevel.fromJson(json['sugars'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductNutriScoreLevelsToJson(
  ProductNutriScoreLevels instance,
) => <String, dynamic>{
  'energy': instance.energy,
  'fiber': instance.fiber,
  'fruitsVegetablesLegumes': instance.fruitsVegetablesLegumes,
  'proteins': instance.proteins,
  'salt': instance.salt,
  'saturatedFat': instance.saturatedFat,
  'sugars': instance.sugars,
};

ProductNutriScoreLevel _$ProductNutriScoreLevelFromJson(
  Map<String, dynamic> json,
) => ProductNutriScoreLevel(
  points: (json['points'] as num).toDouble(),
  maxPoints: (json['maxPoints'] as num).toDouble(),
  unit: json['unit'] as String,
  value: (json['value'] as num).toDouble(),
  type: $enumDecode(_$ProductNutriScoreLevelTypeEnumMap, json['type']),
);

Map<String, dynamic> _$ProductNutriScoreLevelToJson(
  ProductNutriScoreLevel instance,
) => <String, dynamic>{
  'points': instance.points,
  'maxPoints': instance.maxPoints,
  'unit': instance.unit,
  'value': instance.value,
  'type': _$ProductNutriScoreLevelTypeEnumMap[instance.type]!,
};

const _$ProductNutriScoreLevelTypeEnumMap = {
  ProductNutriScoreLevelType.positive: 'positive',
  ProductNutriScoreLevelType.negative: 'negative',
  ProductNutriScoreLevelType.unknown: 'unknown',
};
