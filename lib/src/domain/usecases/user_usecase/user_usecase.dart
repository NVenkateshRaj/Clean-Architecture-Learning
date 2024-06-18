import 'package:clean_architecture/src/core/exception/network_exception.dart';
import 'package:clean_architecture/src/domain/enities/user_entity/user_entity.dart';
import 'package:clean_architecture/src/domain/repositories/user_repo/user_repo.dart';
import 'package:fpdart/fpdart.dart';

class UserUseCase{
  final UserRepo userRepo;

  const UserUseCase(this.userRepo);

  Future<Either<NetworkException,UserEntity>> getUerList(){
    return userRepo.getUserList();
  }
}