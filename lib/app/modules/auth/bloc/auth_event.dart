part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class VerifyAuth extends AuthEvent {
  const VerifyAuth();

  @override
  List<Object> get props => [];
}
