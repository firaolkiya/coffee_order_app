import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class GetALLCoffeeUsecase {
 final CoffeeRepository coffeeRepository;

  GetALLCoffeeUsecase({required this.coffeeRepository});

 Future<Either<Failure,List<CoffeeEntities>>>execute(){
   return coffeeRepository.getALLCoffee();
 }

}