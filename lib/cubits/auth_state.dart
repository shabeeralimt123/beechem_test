part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final LoginResponse response;
  AuthSuccess(this.response);
}

class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}

class AuthEmailRemembered extends AuthState {
  final String email;
  AuthEmailRemembered(this.email);
}