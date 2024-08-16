import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class GetALLFromCartUsecase{
  final CoffeeRepository coffeeRepository;

  GetALLFromCartUsecase({required this.coffeeRepository});

  Future<Either<Failure, List<CoffeeEntities>>>execute(){
    return coffeeRepository.gelAllFromCart();
  }
}