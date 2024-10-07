import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      String name, String email, String password) async {
    User? user;
    try {
      user = await firebaseAuthService.creatreUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModel(name, email, user.uid);

      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomExeption catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
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
      // return right(UserModel.fromFirbaseUer(user));
    } on CustomExeption catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("exeption in AuthRepoImpl.signInWithEmailAndPassword ${e.toString()}");
      return left(ServerFailure("لقد حدث خطأ، يرجى المحاولة مرة أخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      UserEntity userEntity = UserModel.fromFirbaseUer(user);
      addUserData(user: userEntity);
      return right(userEntity);
    } on Exception catch (e) {
      await deleteUser(user);
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
    User? user;

    try {
      var user = await firebaseAuthService.signInWithFacebook();
      UserEntity userEntity = UserModel.fromFirbaseUer(user);
      addUserData(user: userEntity);
      return right(userEntity);
    } on Exception catch (e) {
      await deleteUser(user);
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

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }
}
