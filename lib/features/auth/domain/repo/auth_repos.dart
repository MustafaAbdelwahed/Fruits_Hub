import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/errors/failures.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> creatreUserWithEmailAndPassword(
    String name,
    String email,
    String password,
  );

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future addUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uId});
}
