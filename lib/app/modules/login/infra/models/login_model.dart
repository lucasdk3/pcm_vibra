import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class LoginModel extends Equatable {
  LoginModel({
    this.email,
    this.senha,
    this.emailError,
    this.senhaError,
  });

  String email;
  String senha;
  String emailError;
  String senhaError;

  LoginModel copyWith({
    String email,
    String senha,
    String emailError,
    String senhaError,
  }) =>
      LoginModel(
        email: email ?? this.email,
        senha: senha ?? this.senha,
        emailError: emailError ?? this.emailError,
        senhaError: senhaError ?? this.senhaError,
      );

  @override
  List<Object> get props => [email, senha, emailError, senhaError];
}
