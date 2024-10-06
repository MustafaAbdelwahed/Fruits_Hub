import 'package:fruit_ecommerce_app/core/services/database_service.dart';
import 'package:fruit_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/core/services/firestore_service.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repo_impl.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepos>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    dataBaseService: getIt<DataBaseService>(),
  ));
}
