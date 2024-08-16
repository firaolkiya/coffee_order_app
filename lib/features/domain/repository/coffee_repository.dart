import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';
import 'package:coffee_shop/features/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CoffeeRepository{

  Future<Either<Failure,CoffeeEntities>>getCoffee(String id);

  Future<Either<Failure,List<CoffeeEntities>>> getALLCoffee();

  Future<Either<Failure,bool>>addToFavorite(String id);
  Future<Either<Failure,bool>>removeFromFavorite(String id);


  Future<Either<Failure,List<CoffeeEntities>>>getAllFavorite();

  Future<Either<Failure,bool>>addToCart(String id);

  Future<Either<Failure,bool>>requestCreateAccount(UserEntity user);

  Future<Either<Failure,bool>>requestLogin(String email,String password);

  Future<Either<Failure,List<CoffeeEntities>>>gelAllFromCart();

  Future<Either<Failure,List<CoffeeEntities>>> getAllOrderedCoffee();

  Future<Either<Failure,bool>>sendFeedback(String feedback);

  Future<Either<Failure,String>> getAbout();

  Future<Either<Failure,bool>> requestDownload();

  Future<Either<Failure,String>> askHelp(String question);



}