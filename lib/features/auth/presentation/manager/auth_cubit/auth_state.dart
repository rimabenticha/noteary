part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

//* Auth status states
final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  final User user;

  const Authenticated({required this.user});
}

final class Unauthenticated extends AuthState {}

final class AuthError extends AuthState {
  final String errMessage;

  const AuthError({required this.errMessage});
}

//* Sign up states
final class SignupLoading extends AuthState {}

final class SignupSuccess extends AuthState {
  final User user;

  const SignupSuccess({required this.user});
}

final class SignupFailure extends AuthState {
  final String errMessage;

  const SignupFailure({required this.errMessage});
}

//* User creation states
final class UserCreationLoading extends AuthState {}

final class UserCreationSuccess extends AuthState {}

final class UserCreationFailure extends AuthState {
  final String errMessage;

  const UserCreationFailure({required this.errMessage});
}

//* Sign in states
final class SigninLoading extends AuthState {}

final class SigninSuccess extends AuthState {
  final User user;

  const SigninSuccess({required this.user});
}

final class SigninFailure extends AuthState {
  final String errMessage;

  const SigninFailure({required this.errMessage});
}

//* Sign out states
final class SignoutLoading extends AuthState {}

final class SignoutSuccess extends AuthState {}

final class SignoutFailure extends AuthState {
  final String errMessage;

  const SignoutFailure({required this.errMessage});
}

//* Reset password states
final class ResetPasswordLoading extends AuthState {}

final class ResetPasswordSuccess extends AuthState {}

final class ResetPasswordFailure extends AuthState {
  final String errMessage;

  const ResetPasswordFailure({required this.errMessage});
}
