import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class RequestLoginUsecase{
  final CoffeeRepository coffeeRepository;

  RequestLoginUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(String email,String password){
    return coffeeRepository.requestLogin(email, password);
  }

}