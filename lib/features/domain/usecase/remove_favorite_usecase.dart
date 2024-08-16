import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class RemoveFavoriteUsecase{
   final CoffeeRepository coffeeRepository;

  RemoveFavoriteUsecase({required this.coffeeRepository});

   Future<Either<Failure,bool>>execute(String id){
     return coffeeRepository.removeFromFavorite(id);
   }
}