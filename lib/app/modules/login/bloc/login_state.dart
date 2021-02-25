part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoadingState extends LoginState {}

class EditingState extends LoginState {
  final LoginModel login;

  const EditingState({this.login}) : assert(login != null);

  @override
  String toString() =>
      'Login: {emailError: ${login.emailError}, email: ${login.email}, senha: ${login.senha}, senhaError: ${login.senhaError}}';

  @override
  List<Object> get props => [login];
}
