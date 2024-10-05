// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/user_entity.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepos) : super(SigninInitial());
  final AuthRepos authRepos;

  Future<void> signInUser(String email, String password) async {
    emit(SigninLoading());
    final result = await authRepos.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SigninFailed(message: failure.errorMessage)),
      (users) => emit(SigninSuccess(userEntity: users)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    final result = await authRepos.signInWithGoogle();
    result.fold(
      (failure) => emit(SigninFailed(message: failure.errorMessage)),
      (users) => emit(SigninSuccess(userEntity: users)),
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    final result = await authRepos.signInWithFacebook();
    result.fold(
      (failure) => emit(SigninFailed(message: failure.errorMessage)),
      (users) => emit(SigninSuccess(userEntity: users)),
    );
  }
}
