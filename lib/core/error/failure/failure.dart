
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;
  const Failure({required this.message});
}

class ServerFailure extends Failure{
  const ServerFailure({required super.message});

  @override
  List<Object?> get props => [message];

}

class CashFailure extends Failure{
 const CashFailure({required super.message});

  @override
  List<Object?> get props => [message];

}

class GeneralFailure extends Failure{
  const GeneralFailure({required super.message});

  @override
  List<Object?> get props => [message];

}