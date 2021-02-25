part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class GetImage extends RegisterEvent {
  const GetImage();

  @override
  List<Object> get props => [];
}

class ChangeNome extends RegisterEvent {
  final String nome;

  const ChangeNome({@required this.nome}) : assert(nome != null);

  @override
  List<Object> get props => [nome];
}

class ChangeEmail extends RegisterEvent {
  final String email;

  const ChangeEmail({@required this.email}) : assert(email != null);

  @override
  List<Object> get props => [email];
}

class ChangeTelefone extends RegisterEvent {
  final String telefone;

  const ChangeTelefone({@required this.telefone}) : assert(telefone != null);

  @override
  List<Object> get props => [telefone];
}

class ChangeSenha extends RegisterEvent {
  final String senha;

  const ChangeSenha({@required this.senha}) : assert(senha != null);

  @override
  List<Object> get props => [senha];
}

class Validator extends RegisterEvent {
  const Validator();

  @override
  List<Object> get props => [];
}

class Register extends RegisterEvent {
  final UsersModel users;

  const Register({@required this.users}) : assert(users != null);

  @override
  List<Object> get props => [users];
}
