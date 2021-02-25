part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class ChangeEmail extends LoginEvent {
  final String email;

  const ChangeEmail({@required this.email}) : assert(email != null);

  @override
  List<Object> get props => [email];
}

class ChangeSenha extends LoginEvent {
  final String senha;

  const ChangeSenha({@required this.senha}) : assert(senha != null);

  @override
  List<Object> get props => [senha];
}

class LoginWithEmail extends LoginEvent {
  final String email;
  final String senha;

  const LoginWithEmail({@required this.email, @required this.senha})
      : assert(email != null, senha != null);

  @override
  List<Object> get props => [email, senha];
}
