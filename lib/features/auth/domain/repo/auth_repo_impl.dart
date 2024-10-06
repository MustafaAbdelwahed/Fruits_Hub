import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/errors/exeptions.dart';
import 'package:fruit_ecommerce_app/core/errors/failures.dart';
import 'package:fruit_ecommerce_app/core/services/database_service.dart';
import 'package:fruit_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/core/utils/backend_endpoint.dart';
import 'package:fruit_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';

class AuthRepoImpl extends AuthRepos {
  AuthRepoImpl(
      {required this.dataBaseService, required this.firebaseAuthService});
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;
  @override
  Future<Either<Failure, UserEntity>> creatreUserWithEmailAndPassword(
      String email, String password, String user) async {
    try {
      var user = await firebaseAuthService.creatreUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModel.fromFirbaseUer(user);

      addUserData(user: userEntity);
      return right(userEntity);
    } on CustomExeption catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("exeption in AuthRepoImpl.creatreUserWithEmailAndPassword ${e.toString()}");
      return left(ServerFailure("لقد حدث خطأ، يرجى المحاولة مرة أخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirbaseUer(user));
    } on CustomExeption catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("exeption in AuthRepoImpl.signInWithEmailAndPassword ${e.toString()}");
      return left(ServerFailure("لقد حدث خطأ، يرجى المحاولة مرة أخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirbaseUer(user));
    } on Exception catch (e) {
      log(
        "exeption in AuthRepoImpl.signInWithGoogle ${e.toString()}",
      );
      return left(
        ServerFailure("لقد حدث خطأ، يرجى المحاولة مرة أخرى"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirbaseUer(user));
    } on Exception catch (e) {
      log(
        "exeption in AuthRepoImpl.signInWithFacebook ${e.toString()}",
      );
      return left(
        ServerFailure("لقد حدث خطأ، يرجى المحاولة مرة أخرى"),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
        path: BackendEndpoint.addUserData, data: user.toMap());
  }
}
