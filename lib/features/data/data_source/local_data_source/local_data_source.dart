import 'package:dartz/dartz.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../domain/entities/user_entity.dart';
import '../../model/coffee_model.dart';

abstract class CoffeeLocalDatasource {
  Future<Either<Failure,CoffeeModel>>getCoffee(String id);

  Future<Either<Failure,List<CoffeeModel>>> getALLCoffee();

  Future<Either<Failure,bool>>addToFavorite(String id);
  Future<Either<Failure,bool>>removeFromFavorite(String id);


  Future<Either<Failure,List<CoffeeModel>>>getAllFavorite();

  Future<Either<Failure,bool>>addToCart(String id);

  Future<Either<Failure,bool>>requestCreateAccount(UserEntity user);

  Future<Either<Failure,bool>>requestLogin(String email,String password);

  Future<Either<Failure,List<CoffeeModel>>>gelAllFromCart();

  Future<Either<Failure,List<CoffeeModel>>> getAllOrderedCoffee();

  Future<Either<Failure,bool>>sendFeedback(String feedback);

  Future<Either<Failure,String>> getAbout();

  Future<Either<Failure,bool>> requestDownload();

  Future<Either<Failure,String>> askHelp(String question);

}