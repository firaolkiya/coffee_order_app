import 'package:coffee_shop/core/device/network_info.dart';
import 'package:coffee_shop/core/error/failure/failure.dart';
import 'package:coffee_shop/features/data/data_source/local_data_source/local_data_source.dart';
import 'package:coffee_shop/features/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:coffee_shop/features/domain/entities/coffee_entities.dart';
import 'package:coffee_shop/features/domain/entities/user_entity.dart';
import 'package:coffee_shop/features/domain/repository/coffee_repository.dart';
import 'package:dartz/dartz.dart';

class CoffeeRepositoryImpl extends CoffeeRepository {
  final NetworkInfo networkInfo;
  final CoffeeLocalDatasource localDatasource;
  final CoffeeRemoteDataSource remoteDataSource;

  CoffeeRepositoryImpl(
      {required this.networkInfo,
      required this.localDatasource,
      required this.remoteDataSource});

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
  Future<Either<Failure, List<CoffeeEntities>>> gelAllFromCart() {
    // TODO: implement gelAllFromCart
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeEntities>>> getALLCoffee() {
    // TODO: implement getALLCoffee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> getAbout() {
    // TODO: implement getAbout
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeEntities>>> getAllFavorite() {
    // TODO: implement getAllFavorite
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CoffeeEntities>>> getAllOrderedCoffee() {
    // TODO: implement getAllOrderedCoffee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CoffeeEntities>> getCoffee(String id) {
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
