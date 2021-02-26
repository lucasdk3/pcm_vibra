// To parse this JSON data, do
//
//     final UsersModel = UsersModelFromJson(jsonString);

import 'dart:convert';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';

UsersModel UsersModelFromJson(String str) =>
    UsersModel.fromJson(json.decode(str));

String UsersModelToJson(UsersModel data) => json.encode(data.toJson());

class UsersModel extends Equatable {
  UsersModel({
    this.uid,
    this.email,
    this.nome,
    this.setor,
    this.senha,
    this.imagem,
  });
  String uid;
  String email;
  String nome;
  String setor;
  String senha;
  Uint8List imagem;

  UsersModel copyWith({
    String uid,
    String email,
    String nome,
    String setor,
    String senha,
    String imagem,
  }) =>
      UsersModel(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        nome: nome ?? this.nome,
        setor: setor ?? this.setor,
        senha: senha ?? this.senha,
        imagem: imagem ?? this.imagem,
      );

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        uid: json["uid"] == null ? null : json["uid"],
        email: json["email"] == null ? null : json["email"],
        nome: json["nome"] == null ? null : json["nome"],
        setor: json["setor"] == null ? null : json["setor"],
        senha: json["senha"] == null ? null : json["senha"],
        imagem: json["imagem"] == null ? null : json["imagem"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "email": email == null ? null : email,
        "nome": nome == null ? null : nome,
        "setor": setor == null ? null : setor,
        "senha": senha == null ? null : senha,
        "imagem": imagem == null ? null : imagem,
      };

  @override
  // TODO: implement props
  List<Object> get props => [uid, email, nome, setor, senha, imagem];
}
