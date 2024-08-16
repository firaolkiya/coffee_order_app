import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/entities/user_entity.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

class CreateAccountUsecase{
  final CoffeeRepository coffeeRepository;

  CreateAccountUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(UserEntity user){
    return coffeeRepository.requestCreateAccount(user);
  }
}