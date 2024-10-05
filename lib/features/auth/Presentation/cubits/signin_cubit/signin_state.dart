part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity userEntity;

  SigninSuccess({required this.userEntity});
}

final class SigninFailed extends SigninState {
  final String message;

  SigninFailed({required this.message});
}
