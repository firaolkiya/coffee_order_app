import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:coffee_shop/features/data/model/coffee_model.dart';
import 'package:coffee_shop/features/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

class CoffeeRemoteDataSourceImpl extends CoffeeRemoteDataSource{
  @override
  Future<Either<Failure, bool>> addToCart(String id) {
    // TODO: implement addToCart
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> addToFavorite(String id) {
    // TODO: implement addToFavorite
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> askHelp(String question) {
    // TODO: implement askHelp
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeModel>>> gelAllFromCart() {
    // TODO: implement gelAllFromCart
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeModel>>> getALLCoffee() {
    // TODO: implement getALLCoffee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> getAbout() {
    // TODO: implement getAbout
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeModel>>> getAllFavorite() {
    // TODO: implement getAllFavorite
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeModel>>> getAllOrderedCoffee() {
    // TODO: implement getAllOrderedCoffee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CoffeeModel>> getCoffee(String id) {
    // TODO: implement getCoffee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> removeFromFavorite(String id) {
    // TODO: implement removeFromFavorite
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> requestCreateAccount(UserEntity user) {
    // TODO: implement requestCreateAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> requestDownload() {
    // TODO: implement requestDownload
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> requestLogin(String email, String password) {
    // TODO: implement requestLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> sendFeedback(String feedback) {
    // TODO: implement sendFeedback
    throw UnimplementedError();
  }
  
}