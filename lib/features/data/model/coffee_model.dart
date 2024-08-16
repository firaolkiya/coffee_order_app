import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';

class CoffeeModel extends CoffeeEntities {
  const CoffeeModel({required super.coffeeName,
    required super.id,
    required super.coffeePrice,
    required super.imageUrl,
    required super.description,
    required super.withMilk,
    required super.category,
    required super.maximumAvailable,
    required super.rating});

  @override
  List<Object?> get props =>
      [
        coffeeName,
        id,
        coffeePrice,
        imageUrl,
        description,
        withMilk,
        category,
        maximumAvailable,
        rating
      ];

  factory CoffeeModel.fromJson(Map<String, dynamic>map){
    return CoffeeModel(coffeeName: map['name'],
        id: map['id'],
        coffeePrice: map['price'],
        imageUrl: map['image'],
        description: map['description'],
        withMilk: map['with_milk'],
        category: map['category'],
        maximumAvailable: map['maximum'],
        rating: map['rating']);
  }

  Map<String,dynamic> toJson(){
    return {
      'id': id,
      'price': coffeePrice,
      'image': imageUrl,
      'description': description,
      'with_milk': withMilk,
      'category': category,
      'maximum': maximumAvailable,
      'rating': rating

    };
  }
}
