import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class GetCoffeeUsecase{
  final CoffeeRepository coffeeRepository;

  GetCoffeeUsecase({required this.coffeeRepository});
  Future<Either<Failure,CoffeeEntities>>execute(String id){
    return coffeeRepository.getCoffee(id);
  }
}