import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

class AddToFavoriteUsecase{

  final CoffeeRepository coffeeRepository;

  AddToFavoriteUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(String id){
    return coffeeRepository.addToFavorite(id);
  }

}