import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

class GetAboutUsecase{
  final CoffeeRepository coffeeRepository;

  GetAboutUsecase({required this.coffeeRepository});

  Future<Either<Failure,String>>execute(){
    return coffeeRepository.getAbout();
  }
}