import 'package:fruit_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repo_impl.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepos>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
  ));
}
