import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/errors/failures.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> creatreUserWithEmailAndPassword(
    String email,
    String password,
    String user,
  );
}
