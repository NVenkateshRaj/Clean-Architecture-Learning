import 'package:clean_architecture/src/core/exception/network_exception.dart';
import 'package:clean_architecture/src/domain/enities/user_entity/user_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class UserRepo {
  Future<Either<NetworkException,UserEntity>> getUserList();
}