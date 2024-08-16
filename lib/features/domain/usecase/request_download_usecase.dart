import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure/failure.dart';

class RequestDownloadUsecase{
  final CoffeeRepository coffeeRepository;

  RequestDownloadUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(){
    return coffeeRepository.requestDownload();
  }

}