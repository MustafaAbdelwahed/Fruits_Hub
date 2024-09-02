import 'package:dartz/dartz.dart';
import 'package:fruit_ecommerce_app/core/errors/exeptions.dart';
import 'package:fruit_ecommerce_app/core/errors/failures.dart';
import 'package:fruit_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';

class AuthRepoImpl extends AuthRepos {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> creatreUserWithEmailAndPassword(
      String email, String password, String user) async {
    try {
      var user = await firebaseAuthService.creatreUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirbaseUer(user));
    } on CustomExeption catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("an error occured , please try again later"));
    }
  }
}