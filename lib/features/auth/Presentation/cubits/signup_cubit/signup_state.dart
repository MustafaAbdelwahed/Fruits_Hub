part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class Signupuloading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess(this.userEntity);
}

final class Signupfailed extends SignupState {
  final String message;

  Signupfailed(this.message);
}
