// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepos) : super(SignupInitial());

  final AuthRepos authRepos;

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String user) async {
    emit(Signupuloading());
    final result =
        await authRepos.creatreUserWithEmailAndPassword(email, password, user);
    print(
        "/////////////////////////////////////////////////////////////////////////////");
    print(result);
    print(
        "/////////////////////////////////////////////////////////////////////////////");
    result.fold(
      (failure) => emit(
        Signupfailed(failure.errorMessage),
      ),
      (users) => emit(
        SignupSuccess(users),
      ),
    );
  }
}
