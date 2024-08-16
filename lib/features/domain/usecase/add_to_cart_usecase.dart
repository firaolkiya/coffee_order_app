import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

class AddToCartUsecase{
  final CoffeeRepository coffeeRepository;

  AddToCartUsecase({required this.coffeeRepository});

  Future<Either<Failure,bool>>execute(String id){
    return coffeeRepository.addToCart(id);
  }
}