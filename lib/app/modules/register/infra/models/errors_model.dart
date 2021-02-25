// To parse this JSON data, do
//
//     final ErrorsModel = ErrorsModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

ErrorsModel ErrorsModelFromJson(String str) =>
    ErrorsModel.fromJson(json.decode(str));

String ErrorsModelToJson(ErrorsModel data) => json.encode(data.toJson());

class ErrorsModel extends Equatable {
  ErrorsModel({
    this.email,
    this.nome,
    this.telefone,
    this.senha,
    this.validated,
  });
  String uid;
  String email;
  String nome;
  String telefone;
  String senha;
  String imagem;
  bool validated;

  ErrorsModel copyWith({
    String email,
    String nome,
    String telefone,
    String senha,
    bool validated,
  }) =>
      ErrorsModel(
        email: email ?? this.email,
        nome: nome ?? this.nome,
        telefone: telefone ?? this.telefone,
        senha: senha ?? this.senha,
      );

  factory ErrorsModel.fromJson(Map<String, dynamic> json) => ErrorsModel(
        email: json["email"] == null ? null : json["email"],
        nome: json["nome"] == null ? null : json["nome"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        senha: json["senha"] == null ? null : json["senha"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "nome": nome == null ? null : nome,
        "telefone": telefone == null ? null : telefone,
        "senha": senha == null ? null : senha,
      };

  @override
  // TODO: implement props
  List<Object> get props => [email, senha, telefone, nome];
}
