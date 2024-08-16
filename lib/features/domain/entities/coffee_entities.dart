import 'package:equatable/equatable.dart';

abstract class CoffeeEntities extends Equatable {
  final String coffeeName;
  final String id;
  final double coffeePrice;
  final String imageUrl;
  final String description;
  final bool withMilk;
  final String category;
  final String maximumAvailable;
  final int rating;

  const CoffeeEntities({required this.coffeeName,
    required this.id,
    required this.coffeePrice,
    required this.imageUrl,
    required this.description,
    required this.withMilk,
    required this.category,
    required this.maximumAvailable,
    required this.rating});

}
