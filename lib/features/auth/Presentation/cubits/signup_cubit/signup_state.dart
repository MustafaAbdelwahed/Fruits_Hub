part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class Signupuploading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess(this.userEntity);
}

final class Signupfailed extends SignupState {
  final String errorMessage;

  Signupfailed(this.errorMessage);
}
