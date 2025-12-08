import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(AuthInitial()) {
    _checkAuthStatus();
  }

  final AuthRepo _authRepo;
  StreamSubscription<User?>? authSubscription;

  void _checkAuthStatus() {
    authSubscription = _authRepo.authStateChanges().listen(
      (user) {
        if (isClosed) return;
        if (user != null) {
          emit(Authenticated(user: user));
        } else {
          emit(Unauthenticated());
        }
      },
      onError: (error) {
        if (isClosed) return;
        emit(AuthError(errMessage: error.toString()));
      },
    );
  }

  Future<void> signup({
    required String email,
    required String password,
    required String username,
    required UserModel userModel,
  }) async {
    if (isClosed) return;
    emit(AuthLoading());

    final result = await _authRepo.signup(
      email: email,
      password: password,
      username: username,
    );

    if (isClosed) return;

    await result.fold(
      (failure) async {
        emit(AuthError(errMessage: failure.message));
      },
      (user) async {
        final createUserResult = await _authRepo.createUser(
          userModel.copyWith(uid: user.uid),
        );

        if (isClosed) return;

        createUserResult.fold(
          (failure) => emit(AuthError(errMessage: failure.message)),
          (_) => emit(Authenticated(user: user)),
        );
      },
    );
  }

  Future<void> createUser({required UserModel user}) async {
    if (isClosed) return;
    emit(UserCreationLoading());
    final result = await _authRepo.createUser(user);
    if (isClosed) return;
    result.fold(
      (failure) => emit(UserCreationFailure(errMessage: failure.message)),
      (user) => emit(UserCreationSuccess()),
    );
  }

  Future<void> resetPassword({required String email}) async {
    if (isClosed) return;
    emit(ResetPasswordLoading());
    final result = await _authRepo.resetPassword(email: email);
    if (isClosed) return;
    result.fold(
      (failure) => emit(ResetPasswordFailure(errMessage: failure.message)),
      (success) => emit(ResetPasswordSuccess()),
    );
  }

  Future<void> signin({required String email, required String password}) async {
    if (isClosed) return;
    emit(AuthLoading());
    final result = await _authRepo.signin(email: email, password: password);
    if (isClosed) return;
    result.fold(
      (failure) => emit(AuthError(errMessage: failure.message)),
      (user) => emit(Authenticated(user: user)),
    );
  }

  Future<void> signout() async {
    if (isClosed) return;
    emit(AuthLoading());
    if (isClosed) return;
    final result = await _authRepo.signout();
    result.fold(
      (failure) => emit(AuthError(errMessage: failure.message)),
      (success) => emit(Unauthenticated()),
    );
  }
}
