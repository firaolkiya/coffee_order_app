import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class SendFeedbackUsecase{
  final CoffeeRepository coffeeRepository;

  SendFeedbackUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(String feedback){
    return coffeeRepository.sendFeedback(feedback);
  }

}