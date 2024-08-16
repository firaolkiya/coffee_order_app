import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

class AskHelpUsecase{
  final CoffeeRepository coffeeRepository;
  AskHelpUsecase({required this.coffeeRepository});

  Future<Either<Failure,String>>execute(String question){
    return coffeeRepository.askHelp(question);
  }
}